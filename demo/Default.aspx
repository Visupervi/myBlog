<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="demo_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <link rel="stylesheet" href="css/init.css"/>
  <link rel="stylesheet" href="css/commen.css"/>
  <link rel="stylesheet" href="css/index.css"/>
  <link rel="stylesheet" href="cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
  <script src="js/rem.js"></script>
</head>
<body>
  <header class="blog-header">
    <div class="container">
      <ul class="nav nav-pills nav-right">
        <li role="presentation"><a href="javascript:;">联系我们</a></li>
        <li role="presentation"><a href="login.aspx">登录</a></li>
        <li role="presentation"><a href="userControl.aspx">后台管理</a></li>
        <li role="presentation" class="active"><a href="Default.aspx">首页</a></li>
      </ul>
    </div>
  </header>
  <div class="main-body">
    <div class="container">
      <div class="main-head">
        <p>
          This is my blog
          <span class="write fr"><a href="write.aspx"><i class="iconfont">&#xe637;</i></a></span>
        </p>

      </div>
    </div>
    <nav class="bread">
      <div class="container">
        <ul id="breadcrumbs-two">
          <li><a href="javascript:;">首页</a></li>
          <li><a href="javascript:;" class="current">我的首页</a></li>
        </ul>
      </div>
    </nav>
    <div class="container">
      <div class="row">
        <!-- <div class=""></div> -->
        <aside class="fl col-xs-5 col-md-4 col-sm-4 main-left">
          <div class="search clearfix">
            <input type="search">
            <button><span class="glyphicon glyphicon-search"></span></button>
          </div>
          <div class="blog-catalogue">
            <h4>BLOG CATALOGUE</h4>
            <ul class="list-group">
              <li class="list-group-item">
                <span class="badge">14</span>
                移动web
              </li>
              <li class="list-group-item">
                <span class="badge">14</span>
                H5
              </li>
              <li class="list-group-item">
                <span class="badge">14</span>
                Node.js
              </li>
              <li class="list-group-item">
                <span class="badge">14</span>
                Veu.js
              </li>
              <li class="list-group-item">
                <span class="badge">14</span>
                ASP.NET
              </li>
              <li class="list-group-item">
                <span class="badge">14</span>
                移动web
              </li>
            </ul>
          </div>
          <div class="popular-poster">
            <h4>POPULOR POSTER</h4>
            <ul class="list-group">
              <li class="list-group-item">
                <!-- <span class="badge">14</span>
                移动web -->
                <img class="fl" src="images/kaer.gif" alt=""/>
                <p>2014年8月13日 - html实现文字绕排示例(html图文混排) html实现文字绕排示例(html 图文混排) 在word 中我们知道如何是文字绕排,但在web 页面中如何实现呢?这个就不象w...</p>
                <p class="text-right">2017-05-07</p>
              </li>
              <li class="list-group-item">
                <!-- <span class="badge">14</span>
                移动web -->
                <img class="fl" src="images/kaer.gif" alt=""/>
                <p>2014年8月13日 - html实现文字绕排示例(html图文混排) html实现文字绕排示例(html 图文混排) 在word 中我们知道如何是文字绕排,但在web 页面中如何实现呢?这个就不象w...</p>
                <p class="text-right">2017-05-07</p>
              </li>
              <li class="list-group-item">
                <!-- <span class="badge">14</span>
                移动web -->
                <img class="fl" src="images/kaer.gif" alt=""/>
                <p>2014年8月13日 - html实现文字绕排示例(html图文混排) html实现文字绕排示例(html 图文混排) 在word 中我们知道如何是文字绕排,但在web 页面中如何实现呢?这个就不象w...</p>
                <p class="text-right">2017-05-07</p>
              </li>
              <li class="list-group-item">
                <!-- <span class="badge">14</span>
                移动web -->
                <img class="fl" src="images/kaer.gif" alt=""/>
                <p>2014年8月13日 - html实现文字绕排示例(html图文混排) html实现文字绕排示例(html 图文混排) 在word 中我们知道如何是文字绕排,但在web 页面中如何实现呢?这个就不象w...</p>
                <p class="text-right">2017-05-07</p>
              </li>
           
            </ul>
          </div>
          <div class="tags-cloud">
            <h4>TAGS CLOUD</h4>
            <ul class="list-group">
                <li class="list-group-item">
                  <a href="javascript:;">JUST</a>
                  <a href="javascript:;">DO</a>
                  <a href="javascript:;">IT</a>
                  <a href="javascript:;">QUITE</a>
                  <a href="javascript:;">TO</a>
                  <a href="javascript:;">DO</a>
                  <a href="javascript:;">IT</a>
                </li>
            </ul>
          </div>
        </aside>
      <article class="main-right col-md-8 col-sm-8  fr">
          <ul class="list-group article">
            <li class="list-group-item">
              <img src="images/article1.jpg" alt="">
              <h4>sublime Text3</h4>
              <p>在介绍Less2Css之前我们先安装一个less的语法高亮，用LESS的同学都知道，sublime没有支持less的语法高亮，所以这个插件可以帮上我们，可以直接安装ctrl+shift+p>install Package搜索less按Enter就可以了，或者到这里下载，安装成功后，重启sublime.....</p>
              <a>read More</a>
            </li>
            <li class="list-group-item">
              <img src="images/article1.jpg" alt="">
              <h4>sublime Text3</h4>
              <p>在介绍Less2Css之前我们先安装一个less的语法高亮，用LESS的同学都知道，sublime没有支持less的语法高亮，所以这个插件可以帮上我们，可以直接安装ctrl+shift+p>install Package搜索less按Enter就可以了，或者到这里下载，安装成功后，重启sublime......</p>
              <a>read More</a>
            </li>
            <li class="list-group-item">
              <img src="images/article1.jpg" alt="">
              <h4>sublime Text3</h4>
              <p>在介绍Less2Css之前我们先安装一个less的语法高亮，用LESS的同学都知道，sublime没有支持less的语法高亮，所以这个插件可以帮上我们，可以直接安装ctrl+shift+p>install Package搜索less按Enter就可以了，或者到这里下载，安装成功后，重启sublime......</p>
              <a>read More</a>
            </li>
          </ul>
          <nav>
            <ul class="pagination page">
              <li>
                <a href="javascript:;" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="active"><a href="javascript:;">1</a></li>
              <li><a href="javascript:;">2</a></li>
              <li><a href="javascript:;">3</a></li>
              <li><a href="javascript:;">4</a></li>
              <li>
                <a href="javascript:;" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
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
