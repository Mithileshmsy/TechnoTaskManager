using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_notificationmgmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "Insert Into Tbl_Notification values('" + TxtNews.Text + "','" + DateTime.Now + "')";
        bool b = dm.ExecuteInsertUpdateorDelete(cmd);
        if (b == true)
            Response.Write("<script>alert('Notification Added Succesfully..');window.location.href='notificationmgmt.aspx'</script>");
        else
            Response.Write("<script>alert('Notification Not Added')</script>");
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}