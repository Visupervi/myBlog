<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userControl.aspx.cs" Inherits="demo_userControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <link rel="stylesheet" href="css/init.css"/>
  <link rel="stylesheet" href="css/commen.css"/>
  <link rel="stylesheet" href="css/login.css"/>
  <link rel="stylesheet" href="cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/register.css"/>
  <script src="js/rem.js"></script>
</head>
<body>
  <header class="blog-header">
    <div class="container">
      <ul class="nav nav-pills nav-right">
        <li role="presentation"><a href="javascript:;">联系我们</a></li>
        <li role="presentation"><a href="javascript:;">登录</a></li>
        <li role="presentation" class="active"><a href="javascript:;">后台管理</a></li>
        <li role="presentation" ><a href="javascript:;">首页</a></li>
      </ul>
    </div>
  </header>
  <div class="main-body">
    <div class="container">
        <div class="login-wrap">
            <div class="user clearfix">
              <span class="fl"><i class="iconfont">&#xe6e1;</i></span>
              <input class="fl" type="text" placeholder="Username">
              <p>用户名可用</p>
            </div>
            <div class="password clearfix">
              <span class="fl"><i class="iconfont">&#xe674;</i></span>
              <input class="fl" type="password" placeholder="Password">
              <p>密码强度:弱</p>
            </div>
            <div class="password clearfix">
              <span class="fl"><i class="iconfont">&#xe674;</i></span>
              <input class="fl" type="password" placeholder="Password">
              <p>确认密码</p>
            </div>
            <div class="login-btn">
              <!-- <input type="button" value="登录"> -->
              <input type="button" value="提交">
            </div>
            <div class="dec-text">
              欢迎使用本博客
            </div>
        </div>
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
</body>
</html>
