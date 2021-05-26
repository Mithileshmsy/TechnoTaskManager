using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_mywork : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "Insert Into Tbl_Mywork values('" + TxtWork.Text + "','" + Session["User"].ToString() + "','" + TxtDetail.Text + "','" + DateTime.Now.ToString() + "')";
        if (dm.ExecuteInsertUpdateorDelete(cmd) == true)
        {
            TxtWork.Text = "";
            TxtDetail.Text = "";
            Response.Write("<script>alert('Your work allotement is submitted ...')</script>");
        }
        else
            Response.Write("<script>alert('not submitted ')</script>");
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}