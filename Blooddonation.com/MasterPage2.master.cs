using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class MasterPage2 : System.Web.UI.MasterPage

{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dell\Documents\Visual Studio 2012\WebSites\Blooddonation.com\App_Data\Database.mdf;Integrated Security=True");
    string  url;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email" ]== null) {
            Response.Redirect("~/login.aspx");

        }
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Registration where Email=@Email", con);
        cmd1.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;
        myReader = cmd1.ExecuteReader();
         while (myReader.Read())
        {
            url = myReader["Image"].ToString();
        }
         Image1.ImageUrl = url;
         con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Signin.aspx");
    }
}
