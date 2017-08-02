using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Web.UI.WebControls;

/// <summary>
/// db_help 的摘要说明
/// </summary>
public class db_help
{
  private DataSet ds;
  private string connec;
  private SqlConnection myConn;
  private SqlDataAdapter myAdater;
  private SqlCommand myCmd;
  private int num;
  public db_help()
  {
    string connec = WebConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
    myConn = new SqlConnection(connec);

  }
  public void Open() {
    if (!(myConn.State == ConnectionState.Closed))
    {
      myConn.Close();

    }
    try
    {
      myConn.Open();
    }
    catch(Exception ex)
    {
      //ex.Message
      if (myConn.State == ConnectionState.Open)
      {
        myConn.Close();
      }
    
    }

  }
  public void Close()
  {
    myConn.Close();
  }

  public SqlDataReader ExecReaderSql(string sqlstr)
  {
    Open();
    myCmd = new SqlCommand(sqlstr, myConn);
    SqlDataReader reader = myCmd.ExecuteReader();
    myCmd.Dispose();
    return reader;
    //Close();
  }
  public void ExecNonSql(string sqlstr)
  {
    Open();
    myCmd = new SqlCommand(sqlstr, myConn);
    myCmd.ExecuteNonQuery();
    myCmd.Dispose();
    Close();
  }

  public int ExecNonSqlR(string str)
  {
    Open();
    myCmd = new SqlCommand(str, myConn);
    num = myCmd.ExecuteNonQuery();
    Close();
    return num;
  }

}