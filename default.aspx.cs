using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string c = "Insert into Tbl_Enquiry values('" + TxtName.Text + "','" + TxtEmail.Text + "','" + TxtMobNo.Text + "','" + TxtMsg.Text + "','" + DateTime.Now + "')";
        DBManager dm = new DBManager();
        bool b = dm.ExecuteInsertUpdateorDelete(c);
        if (b == true)
        {
            TxtName.Text = "";
            TxtEmail.Text = "";
            TxtMobNo.Text = "";
            TxtMsg.Text = "";
            Response.Write("<script>alert('Enquiry Saved Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable To Save Enquiry')</script>");
        }
    }
}