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
    public partial class RegisterEmployee : System.Web.UI.Page
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (this.connection)
            {
                SqlCommand cmd = new SqlCommand("spRegister", connection);
                cmd.CommandType=System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@first_name", TextFistName.Text);
                cmd.Parameters.AddWithValue("@last_name", TextLastName.Text);
                cmd.Parameters.AddWithValue("@email_Id", TextEmail.Text);
                cmd.Parameters.AddWithValue("@password", TextPassword.Text);
                cmd.Parameters.AddWithValue("@confirm_password", TextConfirmPassword.Text);

                connection.Open();


                int result = cmd.ExecuteNonQuery();
                ///ExecuteNonQuery method is used to execute SQL Command or the storeprocedure performs, INSERT, UPDATE or Delete operations.
                ///It doesn't return any data from the database.
                ///Instead, it returns an integer specifying the number of rows inserted, updated or deleted.


                connection.Close();

            }
            Response.Redirect("Login.aspx");
        }
    }
}