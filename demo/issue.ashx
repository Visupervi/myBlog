<%@ WebHandler Language="C#" Class="issue" %>

using System;
using System.Web;
using System.Web.Compilation;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
[WebService(Namespace ="http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class issue : IHttpHandler {

  public void ProcessRequest (HttpContext context) {
    context.Response.ContentType = "text/plain";
    string str = "";

    string artContent = context.Request["issue"];
    //string content = HttpUtility.HtmlEncode(artContent);
    string artWriter = context.Request["writer"];
    string artTit = context.Request["title"];
    db_help obj = new db_help();
    if (artContent !="" && artTit != "" && artTit != "")
    {
      str = "insert into T_article(a_Name,a_Writer,a_Content) values ('" + artTit + "','" + artWriter + "','" + artContent + "')";
      if(obj.ExecNonSqlR(str) > 0) ;
        {
            context.Response.Write("ok");
        }
    }
    else {
      context.Response.Write("fail");

    }

    //context.Response.Write(artTit);
  }

  public bool IsReusable {
    get {
      return false;
    }
  }

}