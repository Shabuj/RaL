using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAndRegistration
{
    public partial class FileUpload : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["CrewInformation"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            FileUpload2.SaveAs(Server.MapPath("~/ImageFile/")+ Path.GetFileName(FileUpload2.FileName));
            FileUpload1.SaveAs(Server.MapPath("~/ImageFile/") + Path.GetFileName(FileUpload1.FileName));
            string link1 = "ImageFile/" + Path.GetFileName(FileUpload2.FileName);
            string link2 = "ImageFile/" + Path.GetFileName(FileUpload1.FileName);
            bool gender;
            if (RadioButton1.Checked == true)
            {
                gender = true;
            }
            else
                gender = false;

            bool active = CheckBox1.Checked == true;
            string query = "INSERT INTO FileUploads(Name, Image, Files, Gender, BirthDate,CreateDate, Active) VALUES('" + TextBox1.Text + "','"+link1+"','"+link2+"', '"+gender+"', '"+Date.Value+"',GETDATE(),'"+active+"' )";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();

            if(rowEffect>0)
            {
                Label1.Text = "Inserted Successfully";
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Label1.Text = "Inserted Successfully";
            
        }
    }
}