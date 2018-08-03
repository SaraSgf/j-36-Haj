using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HAKATHON
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {


                SqlConnection CONN = new SqlConnection();
                CONN.ConnectionString = ConfigurationManager.ConnectionStrings["Graduate_ProjectConnectionString"].ConnectionString;

                // String search_value = TextBox2.Text;
                //Label6.Text = search_value;

                String group_name = Session["GroupsEmail"].ToString();
                String QueryStr = "SELECT [StuEmail] FROM [Groups] where [GroupName] ='" + group_name + "'";

                CONN.Open();

                SqlCommand cmd1;
                //---------------------------------------//


                cmd1 = new SqlCommand(QueryStr, CONN);

                SqlDataAdapter sqlDa = new SqlDataAdapter(QueryStr, CONN);
                var reader = cmd1.ExecuteReader();
                string s = string.Empty;
                while (reader.Read())
                {

                    s += (String)reader["StuEmail"];

                    if (s.Equals(""))
                    {
                        Response.Write("<script>alert('الرجاء اختيار عنوان بريد الكتروني للارسال')</script>");

                    }
                    else if (!s.Equals(""))
                    {
                        Response.Write("<script>alert('تم الارسال')</script>");
                    }


                    //Select Email From test2 where Group_Name='أثير'

                    // String QueryStr = "Select * from grad1 where";

                    string firstVariable = string.Empty;
                    string secondVariable = string.Empty;
                    try
                    {

                        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Malaa_ConnectionString"].ConnectionString))
                        {
                            //[Group_name] 
                            using (SqlCommand command = new SqlCommand("SELECT email, pass FROM users11 ", connection))
                            {
                                connection.Open();
                                using (SqlDataReader reader2 = command.ExecuteReader())
                                {
                                    while (reader2.Read())
                                    {
                                        firstVariable = TextBox1.Text;
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        //error handling...
                        // Response.Write(ex.Message.ToString());
                    }

                    //Select Email,Pass_Email From Staff where RoleID=1
                    //SqlDataSource2
                    MailMessage mm = new MailMessage(firstVariable, s);

                    mm.Subject = "لمصلحتك  ";
                    mm.Body = "المكان مزدحم الان , حاول تغيير وجهتك للدور الاخر ";
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential netcredential = new NetworkCredential(firstVariable, secondVariable);
                    smtp.Port = 587;
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = netcredential;
                    smtp.Send(mm);



                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());

            }
        }

    }
}