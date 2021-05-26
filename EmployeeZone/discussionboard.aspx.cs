using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_discussionboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnPost_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "Insert Into Tbl_Question values('" + TxtQuestion.Text + "','" + Session["User"].ToString() + "','" + DateTime.Now.ToString() + "')";
        bool b = dm.ExecuteInsertUpdateorDelete(cmd);
        if (b == true)
        {
            TxtQuestion.Text = "";
            Response.Write("<script>alert('Your Question Posted Succesfully..');window.location.href='discussionboard.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Question Posting Failed!')</script>");
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}