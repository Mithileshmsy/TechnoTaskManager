using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EncryptionManager
/// </summary>
public class EncryptionManager
{
	public EncryptionManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string EncryptMyPassword(string Password)
    {
        string EncryptedPass = "";
        char ch;
        int ASCIIValue;
        foreach (char x in Password)
        {
            ASCIIValue = x;
            if (ASCIIValue >= 65 && ASCIIValue <= 90)
            {
            ASCIIValue = 65 - ASCIIValue + 90;
            }
            else if (ASCIIValue <= 97 && ASCIIValue <= 122)
            {
                ASCIIValue = ASCIIValue + 1;
            }
            else if (ASCIIValue <= 48 && ASCIIValue <= 58)
            {
                ASCIIValue = 48 - ASCIIValue + 58;
            }
            ch = (char)ASCIIValue;
            EncryptedPass = EncryptedPass + ch;
        }
        return EncryptedPass;
    }
}