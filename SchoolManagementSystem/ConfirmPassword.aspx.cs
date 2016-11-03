using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School
{
    public partial class ConfirmPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            if (Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
                TextBoxUsername.Text = Session["USERNAME"].ToString();
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
           
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBS"].ConnectionString);
                string CheckUser = "Select * from Teacher where Username ='" + Session["USERNAME"] + "'";
                SqlDataAdapter adapter = new SqlDataAdapter(CheckUser, conn);
                DataTable dt = new DataTable();

                adapter.Fill(dt);
                //----------retrive data from dataTable-----------
                //string val = dt.Rows[0]["Password"].ToString();

                string us = dt.Rows[0]["Id"].ToString();


                if (TextBoxOldPassword.Text != dt.Rows[0]["Password"].ToString())
                {
                    Label1.Text = "Wrong Password";

                }
                
                else
                {
                    Label1.Text = null;
                    Confirm();

                }
            

        }

        private void Confirm()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBS"].ConnectionString);
            string CheckUser = "Select * from Teacher where Username ='" + Session["USERNAME"] + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(CheckUser, conn);
            DataTable dt = new DataTable();
            conn.Open();
            adapter.Fill(dt);

            string val = dt.Rows[0]["Id"].ToString();

            SqlCommand ww = new SqlCommand("UPDATE Teacher SET Password = '" + TextBoxConfirmNewPassword.Text + "' WHERE Id = '" + val + "'", conn);
            ww.ExecuteNonQuery();

            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void TextBoxOldPassword_TextChanged(object sender, EventArgs e)
        {
            

          
           
        }
    }
}