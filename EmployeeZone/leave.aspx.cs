using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_leave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "Insert Into Tbl_ApplyLeave values('" + TxtName.Text + "','" + Session["User"].ToString() + "','" + TxtFrom.Text + "','" + TxtTo.Text + "','" + TxtTotal.Text + "','" + DateTime.Now.ToString() + "')";
        bool b = dm.ExecuteInsertUpdateorDelete(cmd);
        if (b == true)
        {
            Response.Write("<script>alert('Leave Application Submmited Succesfully..')</script>");
        }
        else
        {
            Response.Write("<script>alert('Application submission failed!')</script>");
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}