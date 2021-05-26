using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_sendsms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        MySMSSender ss = new MySMSSender();
        bool b = ss.SendMySMS(TxtNumber.Text, TxtMsg.Text);
        string msg = b == true ? "SMS send successfully." : "Unable to send SMS";
        Response.Write("<script>alert('" + msg + "')</script>");
        TxtNumber.Text = "";
        TxtMsg.Text = "";
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}