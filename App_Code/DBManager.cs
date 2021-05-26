using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;  /*to establise con from web.config*/

/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ToString());
	public DBManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool ExecuteInsertUpdateorDelete(string CommandText)
    {
        SqlCommand cmd = new SqlCommand(CommandText, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        int a = cmd.ExecuteNonQuery();
        con.Close();
        return a > 0 ? true : false;
    }
    public DataTable ReadBulkRecord(string CommandText)
    {
        SqlDataAdapter da = new SqlDataAdapter(CommandText, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public object ReadSingleValue(string CommandText)
    {
        SqlCommand cmd = new SqlCommand(CommandText, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        object ob = cmd.ExecuteScalar();
        con.Close();
        return ob;
    }

}