using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string patron = "InfoToolsSV";
    protected void btnEnviar__Click (object sender, EventArgs e)
    {
        string conectar = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection sqldb = new SqlConnection(conectar);
        SqlCommand val = new SqlCommand("SP_ValidarUSuaruio", sqldb)
        {
            CommandType = CommandType.StoredProcedure
        };
        val.Connection.Open();
        val.Parameters.Add("@Mail", SqlDbType.VarChar, 50).Value = tbMail.Text;
        val.Parameters.Add("@Contrasenia", SqlDbType.VarChar, 50).Value = tbPass.Text;
        val.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
        SqlDataReader dr = val.ExecuteReader();
        if (dr.Read())
        {
            Response.Redirect("Perfil.aspx");
        }
        else
        {
            lbError.Text = "Contraseña o Correo Invalidos";
        }
        val.Connection.Close();
    }
}