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
    bool Registrado;
    string mensaje = "";
    string conectar = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    protected void btnRegistro__Click(object sender, EventArgs e)
    {
        if(tbNombre.Text==""||tbMail.Text == ""||tbCPass.Text == ""||tbPass.Text == "")
        {
            lbError.Text = "Es necesario llenar todos los campos";
        }
        else
        {
            if(tbPass.Text == tbCPass.Text)
            {
                using (SqlConnection conn = new SqlConnection(conectar))
                {
                    SqlCommand reg = new SqlCommand("SP_RegistrarUsuario", conn);
                    reg.Parameters.AddWithValue("@Nombre", tbNombre.Text);
                    reg.Parameters.AddWithValue("@Mail", tbMail.Text);
                    reg.Parameters.AddWithValue("@Pass", tbPass.Text);
                    reg.Parameters.AddWithValue("@Patron", patron);
                    reg.Parameters.Add("@Registrado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    reg.Parameters.Add("@Mensaje", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;
                    reg.CommandType = CommandType.StoredProcedure;


                    reg.Connection.Open();
                    reg.ExecuteNonQuery();

                    Registrado = Convert.ToBoolean(reg.Parameters["@Registrado"].Value);
                    mensaje = reg.Parameters["@Mensaje"].Value.ToString();
                    if (Registrado)
                    {
                        lbError.Text = "";
                        lbCorrect.Text = mensaje;
                    }
                    else
                    {
                        lbError.Text = mensaje;
                    }
                }
            }
            else
            {
                lbError.Text = "Las contraseñas no coinciden";
            }
        }
    }
}