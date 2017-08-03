<%@ Page Language="C#" AutoEventWireup="true" CodeFile="write.aspx.cs" Inherits="demo_write" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title></title>
  <link rel="stylesheet" href="css/init.css" />
  <link rel="stylesheet" href="css/commen.css" />
  <link rel="stylesheet" href="cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/write.css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" />
  <link rel="stylesheet" href="css/froala_editor.min.css" />
  <script src="js/rem.js"></script>
  <script src="js/libs/jquery-1.11.1.min.js"></script>
</head>
<body>
  <header class="blog-header">
    <div class="container">
      <ul class="nav nav-pills nav-right">
        <li role="presentation"><a href="javascript:;">联系我们</a></li>
        <li role="presentation"><a href="javascript:;">登录</a></li>
        <li role="presentation"><a href="javascript:;">后台管理</a></li>
        <li role="presentation" class="active"><a href="javascript:;">首页</a></li>
      </ul>
    </div>
  </header>
  <section id="editor">
    <div class="container">
      <div class="row">
        <%--<form action="/" method="post" runat="server">--%>
        <div class="title">
          <span><i class="iconfont">&#xe62b;标题</i></span>
          <input class="tit" type="text" name="title" runat="server" placeholder="请输入标题" />
        </div>
        <div class="title">
          <span><i class="iconfont">&#xe60c;</i>作者</span>
          <input class="holder" type="text" name="writer" runat="server" placeholder="请输入作者" />
        </div>
        <div id="edit" class="col-lg-12 col-md-12 col-sm-12" runat="server"></div>
         <input class="issue-btn" type="button" value="发布" runat="server" name="issue"/>
      </div>
    </div>

  </section>
  <script src="js/libs/jquery-1.11.1.min.js"></script>
  <script src="js/froala_editor.min.js"></script>
  <!--[if lt IE 9]>
    <script src="../js/froala_editor_ie8.min.js"></script>
  <![endif]-->
  <script src="js/plugins/tables.min.js"></script>
  <script src="js/plugins/lists.min.js"></script>
  <script src="js/plugins/colors.min.js"></script>
  <script src="js/plugins/media_manager.min.js"></script>
  <script src="js/plugins/font_family.min.js"></script>
  <script src="js/plugins/font_size.min.js"></script>
  <script src="js/plugins/block_styles.min.js"></script>
  <script src="js/plugins/video.min.js"></script>
  <!-- <script src="js/"></script> -->

  <script>
    $(function () {
      $('#edit').editable({ inlineMode: false })
    });
  </script>
  <footer class="blog-footer">
    <div class="container">
      <div class="row">
        <div class="bshare-custom col-xs-4 col-sm-4 col-md-4 col-lg-4">
          <a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
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
        <div class="copyright col-md-12">
          <span class="glyphicon glyphicon-copyright-mark">Visuper@outlook.com 2017.7.14</span>
        </div>
      </div>
    </div>
  </footer>
   <script src="js/libs/jquery.base64.js"></script>
  <script>
    (function () {
      var edit = document.querySelector("#edit");
      var dispaly = document.querySelector(".dislay");
      var issueBtn = document.querySelector(".issue-btn");
      //点击发布按钮，发送ajax请求，把富文本的数据存入数据库，在页面展示界面同时渲染，如何展示详细的信息？
      issueBtn.addEventListener("click", function () {
        var content = edit.querySelector(".froala-element");
        var issueTxt = content.innerHTML;
        var titleVal = document.querySelector(".tit").value;
        var writer = document.querySelector(".holder").value;
        var xhr;
        if (window.ActiveXObject) {
          xhr = new ActiveXObject("Microsoft.XMLHTTP");
        } else {
          xhr = new XMLHttpRequest();
        }
        xhr.open("post", "issue.ashx");
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //如果是post会设置头部信息
        xhr.send("issue=" + issueTxt + "&title=" + titleVal + "&writer=" + writer + "");
        xhr.onreadystatechange = function () {
          if (xhr.readyState == 4 || xhr.status == 200) {
            var data = xhr.responseText;
            console.log(data);
            if (data !== "ok") {
              //alert("请检查网路是否通畅!");
              return false;
            } else {
              alert("发布成功!");
              document.location.href = "Default.aspx";
              return false;
            }
          }
        }
      })
    })();

  </script>

</body>
</html>
