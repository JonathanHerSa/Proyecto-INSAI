using System;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
}