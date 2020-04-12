using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class UserInfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dell\Documents\Visual Studio 2012\WebSites\Blooddonation.com\App_Data\Database.mdf;Integrated Security=True");
    string email, mobile, name, bg, address, url, age, ht, wt, gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Registration where Email=@Email", con);
        cmd1.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;
        myReader = cmd1.ExecuteReader();
        while (myReader.Read())
        {
            email = myReader["Email"].ToString();
            mobile = myReader["Mobile"].ToString();
            name = myReader["Name"].ToString();
            bg = myReader["Blood Group"].ToString();
            address = myReader["Address"].ToString();
            url = myReader["Image"].ToString();
            age = myReader["Age"].ToString();
            ht = myReader["Height"].ToString();
            wt = myReader["Weight"].ToString();
            gender = myReader["Gender"].ToString();
        }
        txtName.Text = name;
        txtEmail.Text = email;
        txtMobile.Text = mobile;
        txtAddress.Text = address;
        txtBg.Text = bg;
        txtGender.Text = gender;
        txtHeight.Text = ht;
        txtWeight.Text = wt;
        txtAge.Text = age;
        Image1.ImageUrl = url;
        myReader.Close();
        con.Close();
    }
}