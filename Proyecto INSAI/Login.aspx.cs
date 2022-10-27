using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string patron = "InsaiJHS";
    int idUsuario;
    protected void btnEnviar__Click (object sender, EventArgs e)
    {
        string conectar = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(conectar))
        {
            SqlCommand reg = new SqlCommand("SP_ValidarUsuario", conn);
            reg.Parameters.AddWithValue("@Mail", tbMail.Text);
            reg.Parameters.AddWithValue("@Pass", tbPass.Text);
            reg.Parameters.AddWithValue("@Patron", patron);
            reg.CommandType = CommandType.StoredProcedure;

            reg.Connection.Open();
            idUsuario = Convert.ToInt32(reg.ExecuteScalar());

            if (idUsuario != 0)
            {
                Session["Logged"] = idUsuario;
                Response.Redirect("Perfil.aspx");
            }
            else
            {
                lbError.Text = "El Usuario o Contraseña no existen";
            }
        }
    }
}