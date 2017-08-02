<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admlogin.aspx.cs" Inherits="demo_admlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="css/init.css"/>
<link rel="stylesheet" href="css/commen.css"/>
<link rel="stylesheet" href="cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/login.css"/>
<script src="js/rem.js"></script>
</head>
<body>
    <header class="blog-header">
    <div class="container">
      <ul class="nav nav-pills nav-right">
        <li role="presentation"><a href="javascript:;">联系我们</a></li>
        <li role="presentation"><a href="login.aspx">登录</a></li>
        <li role="presentation" class="active"><a href="userControl.aspx">后台管理</a></li>
        <li role="presentation" ><a href="Defaul.aspx">首页</a></li>
      </ul>
    </div>
  </header>
  <div class="main-body">
    <div class="container">
    <%--  <form id ="f1" method="post" runat="server" >--%>
        <div class="login-wrap">
            <div class="user clearfix">
              <span class="fl"><i class="iconfont">&#xe6e1;</i></span>
              <input class="fl userName" id="userText" type="text" placeholder="Username" name="userName" runat="server"/>
            </div>
            <div class="password clearfix">
              <span class="fl"><i class="iconfont">&#xe674;</i></span>
              <input class="fl passWord" id="pwdText" type="password" placeholder="Password" name="password" runat="server"/>
            </div>
            <div class="login-btn">
              <input class="btn-login" type="button" value="登录" runat="server"/>
              <input class="register-btn" type="button" value="注册"/>
            </div>
            <div class="dec-text">
              管理本博客
            </div>
        </div>
      <%--  </form>--%>
    </div>
  </div>
  <footer class="blog-footer">
    <div class="container">
    <div class="row">
      <div class="bshare-custom col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <a title="分享到新浪微博" class="bshare-sinaminiblog">
        </a>
        <a title="分享到微信" class="bshare-weixin"></a>
        <a title="分享到QQ空间" class="bshare-qzone"></a>
        <a title="分享到腾讯微博" class="bshare-qqmb"></a>
        <a title="分享到天涯" class="bshare-tianya"></a>
        <a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
        <span class="BSHARE_COUNT bshare-share-count">0</span>
        </div>
        <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
        <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
      <div class="latest-post col-xs-6 col-sm-4 col-md-4 col-lg-4">
        <h4>LATEST-POST</h4>
        <ul class="list-group">
            <li class="list-group-item">
              <p>提供专业的分享按钮代码及精准的数据统计服务,</p>
              <span class="data">2017-6-10</span>
            </li>
            <li class="list-group-item">
              <p>提供专业的分享按钮代码及精准的数据统计服务,</p>
              <span class="data">2017-6-10</span>
            </li>
            <li class="list-group-item">
              <p>提供专业的分享按钮代码及精准的数据统计服务,</p>
              <span class="data">2017-6-10</span>
            </li>
          </ul>
      </div>
      <div class="connect-us col-xs-6 col-sm-4 col-md-4 col-lg-4">
        <h4>CONNECT US</h4>
        <ul class="list-group">
            <li class="list-group-item">
              <span class="glyphicon glyphicon-map-marker"></span>
              <span>上海市浦东新区航头镇航都路18号</span>
            </li>
            <li class="list-group-item">
              <span class="glyphicon glyphicon-earphone"></span>
              <span>17625132761</span>
            </li>
            <li class="list-group-item">
            <span class="glyphicon glyphicon-envelope"></span>
            <span>vichaovi@163.com</span>
            </li>
          </ul>
      </div>
      </div>
      <div class="copyright col-md-12">
      <span class="glyphicon glyphicon-copyright-mark">Visuper@outlook.com 2017.7.14</span>
    </div>
    </div> 
  </footer>
  <script>
    var uName = document.querySelector(".userName");
    var uPwd = document.querySelector(".passWord");
    var loginBtn = document.querySelector(".btn-login");
    var registerBtn = document.querySelector(".register-btn");
    registerBtn.addEventListener("click",function () {
      document.location.href = "register.aspx";
      //window.navigate("register.aspx");
      return false;
    })
    loginBtn.addEventListener("click",function () {
      var uVal = uName.value;
      var pVal = uPwd.value;
      //console.log(pVal);
      //console.log(uVal);
      if (uVal == "" || pVal == "") {
        alert("账号密码不能为空！");
        return false;
      }
        var xhr;
        if (window.ActiveXObject) {
          xhr = new ActiveXObject("Microsoft.XMLHTTP");
        } else {
          xhr = new XMLHttpRequest();
        }
        xhr.open("post", "adamlogin.ashx");
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");//如果是post会设置头部信息
        xhr.send("userName=" + uVal + " &password=" + pVal+"");//用原生js的时候，要注意post方法的拼接（userName="+argus+""&password="+argus+""）
        xhr.onreadystatechange = function () {
          if (xhr.readyState == 4 && xhr.status == 200) {
            var data = xhr.responseText;
            data = data.toString();
            if (data != "fail") {
              alert("登陆成功！");//登录成功后等n秒后跳转到首页
              document.location.href = "manage.aspx";
            } else {
              alert("登录失败，请重新登录！");//登录失败的话直接刷新登录界面，重新登录
              document.location.href = "admlogin.aspx";
            }
        }
      }
    })
  </script>
</body>
</html>
