using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EmployeeZone_Employee : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        if (Session["User"] != null)
        {
            if (IsPostBack == false)
            {
                string cmd = "select EmpName,Profile from Tbl_EmpRegistration where EmailId='" + Session["User"].ToString() + "'";
                DataTable dt = dm.ReadBulkRecord(cmd);
                if (dt.Rows.Count > 0)
                {
                    LblUser.Text = dt.Rows[0][0].ToString();
                    if (dt.Rows[0][1].ToString() != null)
                    {
                        
                        userpicture.ImageUrl = "~/UserPic/" + dt.Rows[0][1].ToString();
                    }
                }
            }
        }
        else
        {
            Response.Redirect("../login.aspx");
        }
    }
}
