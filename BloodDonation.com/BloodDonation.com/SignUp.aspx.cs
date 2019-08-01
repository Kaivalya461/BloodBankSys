using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

namespace BloodDonation.com
{
    public partial class SignUp : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tempdbConnect"].ConnectionString);
        string gender, filename;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //Gender Field Block
            if (rbMale.Checked)
            {
                gender = "Male";
            }
            else if (rbFemale.Checked)
            {
                gender = "Female";
            }

            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Images/" + filename));

            con.Open();

            string insert = "insert into Registration values(@username, @email, @Mobile, @gender, @age, @bg, @weight, @height, @image, @password, @address)";
            SqlCommand cmd = new SqlCommand(insert, con);

            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
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

            Response.Redirect("~/SignIn.aspx");
        }
    }
}