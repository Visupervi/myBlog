<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="demo_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link rel="stylesheet" href="css/init.css"/>
  <link rel="stylesheet" href="css/commen.css"/>
  <link rel="stylesheet" href="cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/manage.css"/>
  <script src="js/rem.js"></script>
  <title></title>
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
      <div class="main-head">
        <p>
          This is my blog
          <span class="write fr"><a href="javascript:;"><i class="iconfont">&#xe637;</i></a></span>
        </p>

      </div>
    </div>
    <nav class="bread">
      <div class="container">
        <ul id="breadcrumbs-two">
          <li><a href="javascript:;">首页</a></li>
          <li><a href="javascript:;" class="current">后台管理</a></li>
        </ul>
      </div>
    </nav>
    <div class="container">
      <div class="row">
        <!-- <div class=""></div> -->
        <aside class="fl col-xs-5 col-md-4 col-sm-4 main-left">
          <ul class="list-group">
            <li class="list-group-item">
             <a href="javascript:;">博客文章管理</a>
            </li>
            <li class="list-group-item">
              <a href="javascript:;">博客用户管理</a>
            </li>
            <li class="list-group-item">
             <a href="javascript:;">博客文章管理</a>
            </li>
            <li class="list-group-item">
              <a href="javascript:;">博客用户管理</a>
            </li>
            <li class="list-group-item">
             <a href="javascript:;">博客文章管理</a>
            </li>
            <li class="list-group-item">
              <a href="javascript:;">博客用户管理</a>
            </li>
          </ul>
        </aside>
      <article class="main-right col-md-8 col-sm-8 col-xs-12  fr">
          <ul class="list-group">
            <li class="list-group-item">
              <span class="badge">14</span>
              <a href="javascript:;">文章</a>
              <ul class="list-group article-manage">
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item"></li>
                <li class="list-group-item"></li>
              </ul>
            </li>
            <li class="list-group-item">
              <span class="badge">14</span>
              <a href="javascript:;">用户</a>
              <ul class="list-group user-manage">
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item">
                  文章1
                  <button class="fr">删除</button>
                </li>
                <li class="list-group-item"></li>
                <li class="list-group-item"></li>
              </ul>
            </li>
            <li class="list-group-item">
             <a href="javascript:;">博客文章管理</a>
            </li>
            <li class="list-group-item">
              <a href="javascript:;">博客用户管理</a>
            </li>
            <li class="list-group-item">
             <a href="javascript:;">博客文章管理</a>
            </li>
            <li class="list-group-item">
              <a href="javascript:;">博客用户管理</a>
            </li>
          </ul>
      </article>
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
