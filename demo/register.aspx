<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>
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
          <form id="f1" method="post" runat="server">
            <div class="user clearfix">
              <span class="fl"><i class="iconfont">&#xe6e1;</i></span>
              <input class="fl uName" id="uName" type="text" placeholder="Username" name="userName" runat="server"/>
              <p class="tips"></p>
            </div>
            <div class="password clearfix">
              <span class="fl"><i class="iconfont">&#xe674;</i></span>
              <input class="fl uPwd" id="uPwd" type="password" placeholder="Password" name="passWord" runat="server"/>
              <p class="tips"></p>
            </div>
            <div class="password clearfix">
              <span class="fl"><i class="iconfont">&#xe674;</i></span>
              <input class="fl secondPwd" type="password" placeholder="Password"/>
              <p class="tips"></p>
            </div>
             <div class="login-btn">
               <button class =" register_btn" id="register_btn" runat="server" onserverclick="butt_ok_Click1">注册</button>
            </div>
          </form>
            <div class="dec-text">
              欢迎注册本博客
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
            <li class="list-group-item"><a href="login.aspx">login.aspx</a>
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
    var uName = document.querySelector(".uName");
    var uPwd = document.querySelector(".uPwd");
    var tips = document.querySelectorAll(".tips");
    var secondPwd = document.querySelector(".secondPwd");
    var registerBtn = document.querySelector(".register_btn");
    var repwd = "";
    var timer = null;
    uName.addEventListener("blur", function () {
      //var timer = null;
      clearInterval(timer);
      tips[0].style.display = "block";//每次失焦都要让P标签显示，但是里面的内容是空
      var val = this.value;
      var uVal = document.querySelector(".uName").value;
      //console.log(uVal);
      if (val == "") {
        tips[0].innerHTML = "密码不能为空";
        tips[0].style.color = "red";
        timer = setTimeout(function () {
          tips[0].style.display = "none";
        }, 3000)

        return false;
      }
      if (!/^[a-zA-Z][a-zA-Z0-9_]{4,15}$/.test(val)) {
        tips[0].innerHTML="用户名必须是字母开头，允许5-16字节，允许字母数字下划线";
        tips[0].style.color = "red";
        timer = setTimeout(function () {
          tips[0].style.display = "none";
        }, 3000)

        return false;
      }
      var xhr;
      if (window.ActiveXObject) {
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
      } else {
        xhr = new XMLHttpRequest();
      }
      xhr.open("post", "register.ashx");
      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //如果是post会设置头部信息
      xhr.send("userName=" + uVal);
      xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 || xhr.status == 200) {
          var data = xhr.responseText;
          if (data == "ok") {
            tips[0].innerHTML = "用户名已被占用，换一个吧";
            tips[0].style.color = "red";
            //tips[0].display = "none";
            setTimeout(function () {
              tips[0].style.display = "none";
            }, 3000)

          } else {
            tips[0].innerHTML = "用户名可以使用";
            tips[0].style.color = "green";
            setTimeout(function () {
              tips[0].style.display = "none";
            }, 3000)
          }
        }
      }
    })

    //密码部分的设置
    uPwd.addEventListener("blur", function () {
      //var timer = null;
      clearInterval(timer);
      tips[1].style.display = "block";
      var pwdVal = uPwd.value;
      if (pwdVal.length < 6) {
        tips[1].innerHTML = "密码长度必须是6-20，由字母、数字、下划线、特殊字符组成";
        tips[1].style.color = "red";
        timer = setTimeout(function () {

          tips[1].style.display = "none";
        },3000)
      }
      //密码验证规则，很实用
      if (/^[a-zA-Z0-9_-]{6,20}$/.test(pwdVal)) {
        //show.className = "success";
        tips[1].innerHTML = "密码强度：弱";
        tips[1].style.color = "gray";
        timer = setTimeout(function () {
          tips[1].style.display = "none"
        }, 3000);
        if (/^([a-z].*[A-Z])|([A-Z].*[a-z])$/.test(pwdVal)) {
          tips[1].innerHTML = "密码强度：中等";
          tips[1].style.color = "orange";
          timer = setTimeout(function () {
            tips[1].style.display = "none"
          }, 3000)
        }
        if (/^([a-z].*[0-9])|([A-Z].*[0-9])|[0-9].*[a-zA-Z]$/.test(pwdVal)) {
          tips[1].innerHTML = "密码强度：高";
          tips[1].style.color = "hotpink";
          timer = setTimeout(function () {
            tips[1].style.display = "none"
          }, 3000)
        }
        if (/^[A-Za-z0-9]+[_][A-Za-z0-9]*$/.test(pwdVal)) {
          tips[1].innerHTML = "密码强度:非常高";
          tips[1].style.color = "green";
          timer = setTimeout(function () {
            tips[1].style.display = "none"
          }, 3000)
        }
        repwd = this.value;
      } else {
        tips[1].innerHTML = "密码不可用，必须是6-20位数字、字母、下划线、特殊字符";
        tips[1].style.color = "red";
        repwd = null;
        timer = setTimeout(function () {
          tips[1].style.display = "none"
        }, 3000)
      }
    })

    //二次输入密码确认密码
    secondPwd.addEventListener("blur", function () {
      tips[2].style.display = "block";
      console.log(repwd);
      if (this.value !== repwd) {
        tips[2].innerHTML = "两次密码不一致，请重新输入";
        tips[2].style.color = "red";
        timer = setTimeout(function () {
          tips[2].style.display = "none";
        }, 3000)
      }
    })

</script>
</body>
</html>
