<%@ WebHandler Language="C#" Class="register" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
public class register : IHttpHandler {

  public void ProcessRequest (HttpContext context) {
    context.Response.ContentType = "text/plain";
    string str = "";
    string userName = context.Request.Form["userName"];
    db_help obj = new db_help();
    SqlDataReader rds = default(SqlDataReader);
    str = "select * from T_user where u_Name='"+userName+"'";
    rds = obj.ExecReaderSql(str);
    if (rds.HasRows)
    {
      context.Response.Write ("ok");
      context.Response.End();
      rds.Close();
    }
    else
    {
      context.Response.Write("fail");
      context.Response.End();
    }
  }

  public bool IsReusable {
    get {
      return false;
    }
  }

}