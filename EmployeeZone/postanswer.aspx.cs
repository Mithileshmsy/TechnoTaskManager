using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_postquestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnPost_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "Insert Into Tbl_Answer values('" + TxtAnswer.Text + "','" + Request.QueryString["QuesId"].ToString() + "','" + Session["User"].ToString() + "','" + DateTime.Now.ToString() + "')";
        bool b = dm.ExecuteInsertUpdateorDelete(cmd);
        if (b == true)
        {
            Response.Write("<script>alert('Answer Posted Succesfully..');window.location.href='discussionboard.aspx'</script>");
        }
        else
        { 
        Response.Write("<script>alert('Answer Posting failed!')</script>");
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}