using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Perfil : System.Web.UI.Page
{

    string conectar = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] == null){
            Response.Redirect("login.aspx");
        }
        string nombre;
        string mail;
        string usuario = Session["Logged"].ToString();
        using (SqlConnection conn = new SqlConnection(conectar))
        {
            SqlCommand reg = new SqlCommand("SP_SelectUsuario", conn);
            reg.CommandType = CommandType.StoredProcedure;
            reg.Parameters.AddWithValue("@idUsuario", Convert.ToInt32(usuario));
            reg.Connection.Open();
            SqlDataReader dr = reg.ExecuteReader();
            dr.Read();
            nombre = Convert.ToString(dr[1]);
            mail = Convert.ToString(dr[2]);
            lbnombre.Text = nombre;
            LbMail.Text = mail;
        }
    }

    protected void btnCerrar__click (object sender, EventArgs e)
    {
        Session.Remove("Logged");
        Response.Redirect("login.aspx");
    }
}
