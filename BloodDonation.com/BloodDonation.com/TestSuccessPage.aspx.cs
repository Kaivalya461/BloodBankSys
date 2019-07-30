using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace BloodDonation.com
{
    public partial class TestSuccessPage : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tempdbConnect"].ConnectionString);
        string gender, filename;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //Gender Logic Block
            if (rbMale.Checked)
            {
                gender = "Male";
            }
            else if(rbFemale.Checked)
            {
                gender = "Female";
            }


            //FileUpload Block
            string path = Server.MapPath("~/Images/");
            string filename = FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(path + filename);


            con.Open();

            string insert = "insert into Registration values(@username, @email, @Mobile, @gender, @age, @bg, @weight, @height, @image, 2123456, 21112)";
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



            cmd.ExecuteNonQuery();

            Response.Redirect("Temp.aspx");

            con.Close();
        }
    }
}