using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class empregistration : System.Web.UI.Page
{
    CaptchaGenerator cg = new CaptchaGenerator();
    static string CaptchCode;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CaptchCode = cg.GetCaptchaCode();
            LblCaptha.Text = CaptchCode;
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {

        if (TxtCaptcha.Text == CaptchCode)
        {
            if (TxtPass.Text == TxtCPass.Text)
            {
                string cmd, EncryptedPass, gender;
                gender = male.Checked == true ? "Male" : "Female";
                EncryptionManager em = new EncryptionManager();
                DBManager dm = new DBManager();
                EncryptedPass = em.EncryptMyPassword(TxtPass.Text);

                if (FUPhoto.HasFile == true)
                {
                    string filename = TxtEmail.Text + FUPhoto.FileName;
                    FUPhoto.SaveAs(Server.MapPath("~/UserPic/" + filename));
                    cmd = "Insert into Tbl_EmpRegistration values('" + TxtName.Text + "','" + gender + "','" + DdlDesignation.SelectedItem.Text + "','" + TxtDOJ.Text + "','" + DdlQualification.SelectedItem.Text + "','" + TxtContact.Text + "','" + TxtEmail.Text + "','" + EncryptedPass + "','" + filename + "','" + TxtAddress.Text + "')";
                }
                else
                {
                    cmd = "Insert into Tbl_EmpRegistration(EmpName,Gender,Designation,DOJ,Qualification,MobNo,EmailId,Passwd,Address) values('" + TxtName.Text + "','" + gender + "','" + DdlDesignation.SelectedItem.Text + "','" + TxtDOJ.Text + "','" + DdlQualification.SelectedItem.Text + "','" + TxtContact.Text + "','" + TxtEmail.Text + "','" + EncryptedPass + "','" + TxtAddress.Text + "')";
                }
                if (dm.ExecuteInsertUpdateorDelete(cmd) == true)
                {
                    cmd = "Insert into Tbl_Login values('" + TxtEmail.Text + "','" + EncryptedPass + "','Employee')";
                    bool b = dm.ExecuteInsertUpdateorDelete(cmd);
                    if (b == true)
                    {
                        Response.Write("<script>alert('Registration Succesfully....');window.location.href='login.aspx';</script>");
                    }
                    else
                    {
                        CaptchCode = cg.GetCaptchaCode();
                        LblCaptha.Text = CaptchCode;
                        Response.Write("<script>alert('Unable To Set Log In Details')</script>");
                    }
                }
                else
                {
                    CaptchCode = cg.GetCaptchaCode();
                    LblCaptha.Text = CaptchCode;
                    Response.Write("<script>alert('Registration Failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Password And Confirm Password Not Match')</script>");
            }
        }
        else
        {
            CaptchCode = cg.GetCaptchaCode();
            LblCaptha.Text = CaptchCode;
            Response.Write("<Script>alert('Invalid Captcha Code')</Script>");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        CaptchCode = cg.GetCaptchaCode();
        LblCaptha.Text = CaptchCode;
    }
}