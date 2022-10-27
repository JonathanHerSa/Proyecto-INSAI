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
        string usuario = Session["Logged"].ToString();
        string cadena = "select * from Usuario_JHS where idUsuario = '" + usuario + "'";
        using (SqlConnection conn = new SqlConnection(conectar))
        {
            SqlCommand reg = new SqlCommand(cadena, conn);
            reg.Connection.Open();
            SqlDataReader dr = reg.ExecuteReader();
            //lbnombre.Text = Convert.ToString(dr[1]);
        }
    }

    protected void btnCerrar__click (object sender, EventArgs e)
    {
        Session.Remove("Logged");
        Response.Redirect("login.aspx");
    }
}
