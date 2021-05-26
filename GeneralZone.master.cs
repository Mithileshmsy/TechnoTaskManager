using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GeneralZone : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        if (IsPostBack == false)
        {
            string cmd = "select EmpName from Tbl_EmpRegistration order by eid desc";
            DataTable dt = dm.ReadBulkRecord(cmd);
            LblTotal.Text = dt.Rows.Count.ToString();
            int i=Convert.ToInt32(dt.Rows.Count.ToString());
            if (i < 5)
            {
                LblUser3.Text = "Unavailabe 5 User";
            }
            else
            {
                LblUser1.Text = dt.Rows[0][0].ToString();
                LblUser2.Text = dt.Rows[1][0].ToString();
                LblUser3.Text = dt.Rows[2][0].ToString();
                LblUser4.Text = dt.Rows[3][0].ToString();
                LblUser5.Text = dt.Rows[4][0].ToString();
            }
        }
    }
}
