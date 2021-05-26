using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeZone_uploadwork : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DBManager md = new DBManager();
        string cmd = "Insert Into Tbl_Upload values('" + Session["User"].ToString() + "','" + FuFile.FileName + "','" + DateTime.Now.ToString() + "')";
        if (md.ExecuteInsertUpdateorDelete(cmd) == true)
        {
            FuFile.SaveAs(Server.MapPath("~/UploadTasks/" + FuFile.FileName));
            Response.Write("<script>alert('Your task is uploaded successfully...')</script>");
        }
        else
            Response.Write("<script>alert('Your task not uploaded')</script>");
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location.href='dashboard.aspx'</script>");
    }
}