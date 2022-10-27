using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class addProducto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void btnRegistro__Click(object sender, EventArgs e)
    {
        string Usuario = Session["Logged"].ToString();
        bool Registrado;
        string mensaje = "";
        string conectar = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        if (tbNombre.Text == "" || tbId.Text == "" || tbStock.Text == "" || tbDesc.Text == "")
        {
            lbError.Text = "Es necesario llenar todos los campos";
        }
        else
        {
            using (SqlConnection conn = new SqlConnection(conectar))
            {
                SqlCommand reg = new SqlCommand("SP_RegistrarProducto", conn);
                reg.Parameters.AddWithValue("@IdProducto", tbId.Text);
                reg.Parameters.AddWithValue("@NombreP", tbNombre.Text);
                reg.Parameters.AddWithValue("@Stock", tbStock.Text);
                reg.Parameters.AddWithValue("@Descripcion", tbDesc.Text);
                reg.Parameters.AddWithValue("@Usuario", Usuario);
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
                    tbId.Text = "";
                    tbNombre.Text = "";
                    tbStock.Text = "";
                    tbDesc.Text = "";
                }
                else
                {
                    lbError.Text = mensaje;
                }
            }
        }
    }
}