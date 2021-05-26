﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        string msg = "";
        if (TxtNewPass.Text == TxtConfPass.Text)
        {
            EncryptionManager em = new EncryptionManager();
            string oldpass = em.EncryptMyPassword(TxtCurPass.Text);
            string newpass = em.EncryptMyPassword(TxtNewPass.Text);
            string cm = "update Tbl_Login set Passwd='" + newpass + "' where UserId='" + Session["Admin"] + "' and Passwd='" + oldpass + "'";
            DBManager dm = new DBManager();
            bool b = dm.ExecuteInsertUpdateorDelete(cm);
            msg = b == true ? "Password Updated Succesfully" : "Invalid Current Password";
            TxtCurPass.Text = "";
            TxtNewPass.Text = "";
            TxtConfPass.Text = "";
        }
        else
            msg = "New Password and Confirm Pasword Not Match";
        Response.Write("<script>alert('" + msg + "')</script>");
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}