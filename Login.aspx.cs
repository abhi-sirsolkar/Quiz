using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                //MessageBox.Show(con.State.ToString());
                SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE EmailID = '" + TextBox1.Text +"';", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while(dr.Read())
                    {
                        if (dr.GetValue(4).ToString() == TextBox2.Text.ToString())
                        {
                            Session["name"] = dr.GetValue(1).ToString();
                            Response.Redirect("Home.aspx");
                        }
                        else
                            MessageBox.Show("Invalid credentials...!");

                        TextBox1.Text = "";
                        TextBox2.Text = "";
                    }
                }
                else
                {
                    MessageBox.Show("Invalid credentials...!");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }

            catch(Exception ex)
            {
                Response.Write("<script>alert("+ex.Message+")</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
            //Response.Redirect("Signup.aspx");
        }
    }
}