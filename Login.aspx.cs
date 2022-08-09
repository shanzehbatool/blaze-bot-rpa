using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BlazeRPA
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection("Data Source = DESKTOP-Q54I7G9\\WINCCPLUSMIG2014; Initial Catalog = master; User Id = shanzeh; Password= 123abc ");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("select * from DEPARTMENTSINFO where Username ='" + txtUser.Text + "'", c);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["Password"].ToString() == txtPwd.Text)
                {
                    Session["UserLogin"] = txtUser.Text;
                    Response.Redirect("index.html");

                }
                else
                {
                    lblMsg.Text = "Invalid Id/ Password Combination";
                }
            }
            else
            {
                lblMsg.Text = "Invalid Id/ Password Combination";
            }
        }
    }
}
       