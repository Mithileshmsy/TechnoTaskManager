using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        string cmd = "insert into Tbl_FeedBack values('" + Session["User"] + "','" + TxtSubject.Text + "','" + TxtMsg.Text + "','" + DateTime.Now.ToString() + "')";
        DBManager dm = new DBManager();
        bool b = dm.ExecuteInsertUpdateorDelete(cmd);
        if (b == true)
        {
            TxtSubject.Text = "";
            TxtMsg.Text = "";
            Response.Write("<script>alert('Feedback Saved Successfully..')</script>");
        }
        else
        {
            Response.Write("<script>alert('Feedback Not Saved')</script>");
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}