using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAndRegistration
{
    public partial class RegistrationUI : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["CrewInformation"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            bool check=  CheckPassword(TextBox3.Text,TextBox4.Text);

            if(check)
            {
                string query = "INSERT INTO users(UserName, Email, Password) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                int rowEffect = command.ExecuteNonQuery();
                connection.Close();

                if (rowEffect > 0)
                {
                    ml.Text = "Sign Up Successfully.";
                    ml.ForeColor = Color.Green;
                }
                else
                {
                    ml.Text = "Sign Up Failed.";
                    ml.ForeColor = Color.Red;
                }
            }
            else
            {
                ml.Text = "Password must be same.";
                ml.ForeColor = Color.Red;
            }
            
        }

        private bool CheckPassword(string text1, string text2)
        {
            if (TextBox4.Text == TextBox3.Text)
            {
                 return true;
            }
               
            else

                return false;
        }
    }
}