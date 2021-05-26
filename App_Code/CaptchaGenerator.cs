using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CaptchaGenerator
/// </summary>
public class CaptchaGenerator
{
    string Code;
	public CaptchaGenerator()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string GetCaptchaCode()
    {
        Random r=new Random();
        char ch1, ch2, ch3, ch4, ch5, ch6;
        ch1=(char)r.Next(65,90);
        ch2=(char)r.Next(70,80);
        ch3=(char)r.Next(48,57);
        ch4=(char)r.Next(100,120);
        ch5=(char)r.Next(75,90);
        ch6=(char)r.Next(70,90);
        Code=ch1+""+ch2+""+ch3+""+ch4+""+ch5+""+ch6+"";
        return Code;
    }
}