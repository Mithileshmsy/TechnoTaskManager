using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_workallotment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "Insert Into Tbl_WorkAllot values('" + DdlEmployeeName.SelectedItem.Text + "','" + DdlEmployeeId.SelectedItem.Text + "','" + TxtTask.Text + "','" + TxtTDes.Text + "','" + TxtFDate.Text + "','" + DateTime.Now.ToString() + "')";
        if (dm.ExecuteInsertUpdateorDelete(cmd) == true)
        {
            TxtTask.Text = "";
            TxtFDate.Text = "";
            TxtTDes.Text = "";
            Response.Write("<script>alert('Work Alloted Succesfully..')</script>");
        }
        else
            Response.Write("<script>alert('Unable To Allot Work')</script>");
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}