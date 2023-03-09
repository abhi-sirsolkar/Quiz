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
    public partial class Signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkEmail())
                MessageBox.Show("Email-ID already Exist...Try With Different Email-ID");
            else
                SignUp();
        }

        bool checkEmail()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                con.Open();
           
               SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE EmailID = '" + TextBox2.Text.Trim() + "';", con);
               
                /*SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                    return true;
                else
                    return false;*/

                /*SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            if (dr.GetValue(3).ToString() == TextBox2.Text.ToString())
                                return true; 
                            else
                                return false;
                        }
                    }*/
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");
            }
        }

        void SignUp()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO Candidate(Name,EmailID,Password) VALUES (@Name,@EmailID,@Password)", con);

                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                MessageBox.Show("DataEnter Successfully");
                con.Close();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                Response.Redirect("Login.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");
            }
        }
    }
}