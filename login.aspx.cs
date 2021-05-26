using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    string cmd, ep;
    EncryptionManager em = new EncryptionManager();
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
          ep = em.EncryptMyPassword(TxtPass.Text);
         cmd = "Select * from Tbl_Login where UserId='" + TxtUID.Text + "' and Passwd='" + ep + "' and Utype='" + DdlType.SelectedItem.Text + "'";
        object ob = dm.ReadSingleValue(cmd);
        if (ob != null && DdlType.SelectedItem.Text=="Employee")
        {
            //session
            Session["User"] = TxtUID.Text;
            Response.Redirect("~/EmployeeZone/dashboard.aspx");
        }
        else if (ob != null && DdlType.SelectedItem.Text == "Admin")
        {
            //session
            Session["Admin"] = TxtUID.Text;
            Response.Redirect("~/AdminZone/dashboard.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Username Or Password')</script>");
        }
    }
}