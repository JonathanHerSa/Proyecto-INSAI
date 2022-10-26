using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string patron = "InfoToolsSV";
    protected void btnRegistro__Click(object sender, EventArgs e)
    {
        if(tbNombre.Text==""||tbMail.Text == ""||tbPass.Text == ""||tbPass.Text == "")
        {
            
        }
        else
        {

        }
    }
}