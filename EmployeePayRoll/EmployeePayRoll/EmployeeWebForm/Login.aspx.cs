using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRoll.EmployeeWebForm
{
    public partial class Login : System.Web.UI.Page
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
               Response.Redirect("RegisterEmployee.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (this.connection)
            {
                SqlCommand cmd = new SqlCommand("spLogin", connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email_Id", TextEmail.Text);
                cmd.Parameters.AddWithValue("@password", TextPassword.Text);


                connection.Open();


                int result = cmd.ExecuteNonQuery();
                ///ExecuteNonQuery method is used to execute SQL Command or the storeprocedure performs, INSERT, UPDATE or Delete operations.
                ///It doesn't return any data from the database.
                ///Instead, it returns an integer specifying the number of rows inserted, updated or deleted.


                connection.Close();

                if (result == 0)
                {
                    Label1.Text = "login failed";
                    Label1.ForeColor= System.Drawing.Color.Red;

                }
                else
                {
                    Label1.Text = "login successfull";
                    Label1.ForeColor = System.Drawing.Color.Green;
                    //Response.Redirect("home.aspx");
                }
            }
        }
    }
}