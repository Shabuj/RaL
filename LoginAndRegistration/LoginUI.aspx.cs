using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAndRegistration
{
    public partial class LoginUI : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["CrewInformation"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT count(*) FROM users WHERE UserName='"+ TextBox1.Text+"' and Password='"+ TextBox3.Text+"'";
            SqlCommand command = new SqlCommand(query, connection);
            
            connection.Open();
            int rowEffect = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();

            if(rowEffect==1)
            {
                Response.Redirect("Contact.aspx");
            }
        }
    }
}