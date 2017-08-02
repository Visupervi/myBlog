using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
  db_help obj;
  SqlDataReader rds;
  protected int a = 0;
  protected string f_nav = "";
  protected string c_nav = "";
  protected string _nav_cla = "none_none";
  public string nav_cla
  {
    get
    {
      return _nav_cla;
    }
    set
    {
      _nav_cla = value;
    }
  }

  protected void Page_Load(object sender, EventArgs e)
  {
    this.Load += new System.EventHandler(Page_Load);
    if (_nav_cla != null)
    {
      string[] navs = _nav_cla.Split('_');
      f_nav = navs[0];
      c_nav = _nav_cla;
    }
  }

  //用户密码注册
  protected void butt_ok_Click1(object sender, System.EventArgs e)
  {
    string sql = "";
    string adm = uName.Value;
    //string adm = Request.Form["Username"];
    string npw = uPwd.Value;
    //string npw = Request.Form["Password"];
    //Console.Write()
    obj = new db_help();
    //sql = "insert into T_user (U_name,U_password) values ( '"+ adm+ "','" + npw + "'）";
    sql = "Insert into T_user(U_Name, U_Password) values('" + adm + "','" + npw + "')";
    obj.ExecNonSql(sql);
    obj.Close();
    //function_all.TiaoZhuan("注册成功，请登录！", "Default.aspx", 0);
    Response.Write("<script>alert('注册成功');window.location='Default.aspx';</script>");

    Response.Write(adm);
  }


}