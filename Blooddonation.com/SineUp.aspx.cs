using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class SineUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dell\Documents\Visual Studio 2012\WebSites\Blooddonation.com\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd;

    string gender, filename;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbMale.Checked)
        {
            gender = "Male";
        }
        else if (rbFemale.Checked)
        {
            gender = "Female";
        }
        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        con.Open();
        FileUpload1.SaveAs(Server.MapPath("~/Images/" + filename));
        cmd = new SqlCommand("insert into Registration values(@Name, @Email, @Mobile, @gender, @age, @bg, @weight, @height, @image, @password, @address)", con);

        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@age", ddAge.SelectedValue);
        cmd.Parameters.AddWithValue("@bg", ddBg.SelectedValue);
        cmd.Parameters.AddWithValue("@weight", txtWeight.Text);
        cmd.Parameters.AddWithValue("@height", txtHeight.Text);
        cmd.Parameters.AddWithValue("@image", "Images/" + filename);
        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);


        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("~/Signin.aspx");

    }
}