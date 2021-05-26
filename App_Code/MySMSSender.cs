using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
/// <summary>
/// Summary description for MySMSSender
/// </summary>
public class MySMSSender
{
    string MyUserId, MyPassword, MySenderId;
	public MySMSSender()
	{
        MyUserId = "BRIJESH";
        MyPassword = "8620e45a26XX";
        MySenderId = "SPILKO";
	}
    public bool SendMySMS(string MobileNo, string Message)
    {
        try
        {
            string APIUrl = "http://sms.bulkssms.com/submitsms.jsp?user=" +
                MyUserId + "&key=" + MyPassword + "&mobile=" +
                MobileNo + "&message=" + Message + "&senderid=" +
                MySenderId + "&accusage=1";
            WebClient wc = new WebClient();
            string respponse = wc.DownloadString(APIUrl);
            string result = respponse.Substring(
                respponse.IndexOf('s'), 4);
            if (result == "sent")
                return true;
            else
                return false;
        }
        catch
        {
            return false;
        }
    }
}