using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//The PollingPoll.aspx and PollingPoll.aspx.cs is  First pages for the Polling Web Appliation  
namespace Polling
{
    public partial class PollingPoll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rdnmdc.Checked = false;
                rdncd.Checked = false;
                rdnads.Checked = false;
                rdnjrrrt.Checked = false;
            }
        }
        protected void brnrslts_Click(object sender, EventArgs e)
        {
            try
            {
                //Going to Results Page from this Page.
                Response.Redirect("~/Results.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Please try Again..!" + ex.ToString());
            }
        }
        protected void btnsaved_Click(object sender, EventArgs e)
        {
            try
            {
                //This is for connect the SQL SERVER  Database 
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString);

                if (rdnmdc.Checked)
                {
                    conn.Open();
                    //Values into SQL SERVER DATABASE TABLE The Table is "PollingTable" in My DATABASE. 
                    string query = "update PollingTable set Countingpolls = Countingpolls+1 where Name ='Miguel de Cervantes'";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    rdnmdc.Checked = false;
                    Label1.Text = "Details Saved Successfully";
                }
                else if (rdnads.Checked)
                {
                    conn.Open();
                    //Values into SQL SERVER DATABASE TABLE The Table is "PollingTable" in My DATABASE. 
                    string query = "update PollingTable set Countingpolls = Countingpolls+1 where Name ='Antoine de Saint-Exuper'";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    rdnads.Checked = false;
                    Label1.Text = "Details Saved Successfully";
                }
                else if (rdncd.Checked)
                {
                    conn.Open();
                    //Values into SQL SERVER DATABASE TABLE The Table is "PollingTable" in My DATABASE. 
                    string query = "update PollingTable set Countingpolls = Countingpolls+1 where Name ='Charles Dickens'";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    rdncd.Checked = false;
                    Label1.Text = "Details Saved Successfully";
                }
                else if (rdnjrrrt.Checked)
                {
                    conn.Open();
                    //Values into SQL SERVER DATABASE TABLE The Table is "PollingTable" in My DATABASE. 
                    string query = "update PollingTable set Countingpolls = Countingpolls+1 where Name ='J.R.R. Tolkien'";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    rdnjrrrt.Checked = false;
                    Label1.Text = "Details Saved Successfully";
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Please Select AnyOne from the List for Poll";
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured Please refresh Page and try agian...!" + ex.ToString());
                rdnmdc.Visible = false;
                rdncd.Visible = false;
                rdnads.Visible = false;
                rdnjrrrt.Visible = false;
                brnrslts.Visible = false;
                lblhd.Visible = false;
                btnsaved.Visible = false;
                brnrslts.Visible = false;
                header.Visible = false;
            }

        }
    }
}