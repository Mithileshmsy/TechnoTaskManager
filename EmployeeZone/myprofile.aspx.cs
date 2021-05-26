using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_myprofile : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionManager em = new EncryptionManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            TxtEmpName.ReadOnly = true;
            TxtAddress.ReadOnly = true;
            TxtDesignation.ReadOnly = true;
            TxtDOJ.ReadOnly = true;
            TxtMobNo.ReadOnly = true;
            TxtQualification.ReadOnly = true;
            FUFile.Visible = false;
            BtnUpdate.Visible = false;
            BtnEdit.Visible = true;
            RdbMale.Enabled = false;
            RdbFemale.Enabled = false;
            string cmd = "Select * from Tbl_EmpRegistration where EmailId='" + Session["User"] + "'";
            System.Data.DataTable dt = dm.ReadBulkRecord(cmd);
            if (dt.Rows.Count > 0)
            {
                TxtEmpName.Text = dt.Rows[0][1].ToString();
                string gender = dt.Rows[0][2].ToString();
                if (gender == "Male")
                {
                    RdbMale.Checked = true;
                }
                else
                {
                    RdbFemale.Checked = true;
                }
                
                TxtDesignation.Text = dt.Rows[0][3].ToString();
                TxtDOJ.Text = dt.Rows[0][4].ToString();
                TxtQualification.Text = dt.Rows[0][5].ToString();
                LblEmail.Text = dt.Rows[0][7].ToString();
                TxtMobNo.Text = dt.Rows[0][6].ToString();
                UserPic.ImageUrl = "~/UserPic/" + dt.Rows[0][9].ToString();
                TxtAddress.Text = dt.Rows[0][10].ToString();
            }
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        TxtEmpName.ReadOnly = false;
        TxtAddress.ReadOnly = false;
        TxtDesignation.ReadOnly = false;
        TxtDOJ.ReadOnly = false;
        TxtMobNo.ReadOnly = false;
        TxtQualification.ReadOnly = false;
        FUFile.Visible = true;
        BtnUpdate.Visible = true;
        BtnEdit.Visible = false;
        RdbMale.Enabled = true;
        RdbFemale.Enabled = true;
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        TxtEmpName.ReadOnly = true;
        TxtAddress.ReadOnly = true;
        TxtDesignation.ReadOnly = true;
        TxtDOJ.ReadOnly = true;
        TxtMobNo.ReadOnly = true;
        TxtQualification.ReadOnly = true;
        FUFile.Visible = false;
        BtnUpdate.Visible = false;
        BtnEdit.Visible = true;
        RdbMale.Enabled = false;
        RdbFemale.Enabled = false;
        string gender = "";
        string cmd;
        if (RdbMale.Checked == true)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        if (FUFile.HasFile == true)
        {
            FUFile.SaveAs(Server.MapPath("~/UserPic/" + FUFile.FileName));
            cmd = "Update Tbl_EmpRegistration set EmpName='" + TxtEmpName.Text + "', Gender='" + gender + "', Designation='" + TxtDesignation.Text + "', DOJ='" + TxtDOJ.Text + "', Qualification='" + TxtQualification.Text + "', MobNo='" + TxtMobNo.Text + "', Profile='" + FUFile.FileName + "', Address='" + TxtAddress.Text + "' where EmailId='" + Session["User"].ToString() + "'";
        }
        else
        {
            cmd = "Update Tbl_EmpRegistration set EmpName='" + TxtEmpName.Text + "', Gender='" + gender + "', Designation='" + TxtDesignation.Text + "', DOJ='" + TxtDOJ.Text + "', Qualification='" + TxtQualification.Text + "', MobNo='" + TxtMobNo.Text + "', Address='" + TxtAddress.Text + "' where EmailId='" + Session["User"].ToString() + "'";
        }
        if (dm.ExecuteInsertUpdateorDelete(cmd) == true)
        {
            Response.Write("<script>alert('Thanks! Now Your Profile Is Updated')</script>");
        }
        else
        {
            Response.Write("<script>alert('Profile Upation Failed')</script>");
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}
