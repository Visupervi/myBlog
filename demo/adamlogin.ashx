<%@ WebHandler Language="C#" Class="adamlogin" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.Services;
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class adamlogin : IHttpHandler {

  public void ProcessRequest (HttpContext context) {
    context.Response.ContentType = "text/plain";
    string str = "";
    string uName = context.Request["userName"];
    string uPwd = context.Request["password"];
    db_help obj = new db_help();
    SqlDataReader rds = default(SqlDataReader);
    str = "select * from T_mannager where m_Name='" + uName + "'and m_Password='"+uPwd+"'";
    rds = obj.ExecReaderSql(str);
    if (rds.HasRows)
    {
      context.Response.Write ("succese");
      context.Response.Write(uPwd);
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