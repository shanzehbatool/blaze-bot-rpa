using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

namespace BlazeRPA
{
    public partial class ModifyTable : System.Web.UI.Page
    {
        string connectionString = @"Data Source = DESKTOP-Q54I7G9\WINCCPLUSMIG2014; Initial Catalog = master; User Id = shanzeh; Password= 123abc;";

        //SqlConnection c = new SqlConnection("Data Source = DESKTOP-Q54I7G9\\WINCCPLUSMIG2014; Initial Catalog = master; User Id = shanzeh; Password= 123abc;");



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }
        }

        void PopulateGridview()
        {
            

            DataTable dtbl = new DataTable();
            using (SqlConnection c = new SqlConnection(connectionString))
            {
                
                c.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM ONBOARDCHECKLIST", c);
                sqlDa.Fill(dtbl);

            }
            if (dtbl.Rows.Count > 0)
            {
                              
                gvEmp.DataSource = dtbl;
                gvEmp.DataBind();
                              
            }
            else
            {
                
                dtbl.Rows.Add(dtbl.NewRow());
                gvEmp.DataSource = dtbl;
                gvEmp.DataBind();
                gvEmp.Rows[0].Cells.Clear();
                gvEmp.Rows[0].Cells.Add(new TableCell());
                gvEmp.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvEmp.Rows[0].Cells[0].Text = "No Data Found ..!";
                gvEmp.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }



        }

        protected void gvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int count = 0;
            
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection c = new SqlConnection(connectionString))
                    {
                        c.Open();
                        
                        string query = "INSERT INTO ONBOARDCHECKLIST (FirstName,LastName,JoiningDate,MailID,BGV,IT,Security,Finance,CorporateTraining,OnboardStatus) VALUES (@FirstName,@LastName,@JoiningDate,@MailID,@BGV,@IT,@Security,@Finance,@CorporateTraining,@OnboardStatus)";

                                                
                        SqlCommand sqlCmd = new SqlCommand(query, c);
                        
                        //sqlCmd.Parameters.AddWithValue("@Person_ID", (gvEmp.FooterRow.FindControl("txtPersonIDFooter") as TextBox).Text.Trim());
                                              
                        sqlCmd.Parameters.AddWithValue("@FirstName", (gvEmp.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        
                        sqlCmd.Parameters.AddWithValue("@LastName", (gvEmp.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        
                        sqlCmd.Parameters.AddWithValue("@JoiningDate", (gvEmp.FooterRow.FindControl("txtContactFooter") as TextBox).Text.ToString().Trim());
                        
                        sqlCmd.Parameters.AddWithValue("@MailID", (gvEmp.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                        
                        sqlCmd.Parameters.AddWithValue("@BGV", "InProgress");
                        
                        sqlCmd.Parameters.AddWithValue("@IT", "InProgress");
                       

                        sqlCmd.Parameters.AddWithValue("@Security", "InProgress");
                        
                        sqlCmd.Parameters.AddWithValue("@Finance", "InProgress");
                        
                        sqlCmd.Parameters.AddWithValue("@CorporateTraining", "InProgress");
                        
                        sqlCmd.Parameters.AddWithValue("@OnboardStatus", "InProgress");
                        
                        sqlCmd.ExecuteNonQuery();
                        
                        PopulateGridview();
                        
                        lblSuccessMessage.Text = "New Record Added";
                        
                        lblErrorMessage.Text = "";
                        

                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                //lblErrorMessage.Text = ex.Message;
                lblErrorMessage.Text = "Invalid input, kindly match the requested format-" +
                    "<br/>" + "1)First Name & Last Name - Uppercase/lowercase letters" +
                    "<br/>" + "2)Mail ID - Uppercase/lowercase letters, digits, special characters(@,.,_,-)";
            }
            
        }

        protected void gvEmp_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmp.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvEmp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmp.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvEmp_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection c = new SqlConnection(connectionString))
                {
                    c.Open();
                    string query = "UPDATE ONBOARDCHECKLIST SET FirstName=@FirstName,LastName=@LastName,JoiningDate=@JoiningDate,MailID=@id WHERE MailID = @MailID";
                    SqlCommand sqlCmd = new SqlCommand(query, c);
                    //sqlCmd.Parameters.AddWithValue("@Person_ID", (gvEmp.FooterRow.FindControl("txtPersonID") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@FirstName", (gvEmp.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@LastName", (gvEmp.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                                        
                    sqlCmd.Parameters.AddWithValue("@JoiningDate", (gvEmp.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.ToString().Trim());
                    sqlCmd.Parameters.AddWithValue("@id", (gvEmp.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    //sqlCmd.Parameters.AddWithValue("@MailID", Convert.ToInt32(gvEmp.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.Parameters.AddWithValue("@MailID", gvEmp.DataKeys[e.RowIndex].Value.ToString());
                    sqlCmd.ExecuteNonQuery();
                    gvEmp.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
                //lblErrorMessage.Text = "Success!";
            }
            
        }

        protected void gvEmp_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection c = new SqlConnection(connectionString))
                {
                    c.Open();
                    string query = "DELETE FROM ONBOARDCHECKLIST WHERE MailID = @MailID";
                    SqlCommand sqlCmd = new SqlCommand(query, c);
                    //sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvEmp.DataKeys[e.RowIndex].Value.ToString()));
                    //sqlCmd.Parameters.AddWithValue("@MailID", (gvEmp.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@MailId", gvEmp.DataKeys[e.RowIndex].Value.ToString());
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
                //lblErrorMessage.Text = "Success!";
            }
            
        }

        protected void gvEmp_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnConfirm_Click2(object sender, EventArgs e)
        {
            Response.Redirect("index.html");

        }
    }
}