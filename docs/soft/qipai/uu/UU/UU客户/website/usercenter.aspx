<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usercenter.aspx.cs" Inherits="GameWeb.usercenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<link href="css/index_new.css" rel="stylesheet" type="text/css" />

<title>
	UU棋牌账户中心
</title>
<script language="javascript" type="text/javascript">
    function getimgcode() {
        var getimagecode = document.getElementById("getcode");
        getimagecode.src = "VerifyCode.aspx";
    } 
</script> 
    <script src="js/HttpRequest.js" type="text/javascript"></script>
    
    <script language='javascript' type='text/javascript' src="js/myst.js"></script>
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/YlMarquee.js"></script>
    <script type="text/javascript">
        function hide_code() {
            if ($('#yzmText').data('hide') == 0) {
                $('#yzm').hide();
            }
        }

        function showpop(id) {
            var showBox = document.getElementById(id);
            var mask = document.createElement('div');
            var Position = document.body;
            showBox.style.display = 'block';
            showBox.style.left = 400 + "px";
            showBox.style.top = 900 + "px";

        }

        function closepop(id) {
            var showBox = document.getElementById(id);
            var allObj = document.getElementsByTagName("div");
            showBox.style.display = 'none';

        }
        $(function () {
            $("#demod1").jMarquee({ visible: 9, step: 1, direction: "up" });

            $(window).bind("resize", function () {
                resize();
            });
            resize();
        });
        function resize() {
            var width = $(window).width();
            width = (width - 1003) / 2 - 212;
            $("#main").css("left", width);
        }
        function index_checkuserinfo() {

            if (document.getElementById("tbluid").value == "") {
                document.getElementById("tbluid").focus();
                alert("用户名不能为空！");
                return false;
            }
            if (document.getElementById("tblpwd").value == "") {
                document.getElementById("tblpwd").focus();
                alert("请填写密码！");
                return false;
            }

            if (document.getElementById("yzmText").value == "") {
                document.getElementById("yzmText").focus();
                alert("请填写验证码！");
                return false;
            }

        }
    </script>
    <script type="text/javascript">
<!--
        function index_checkuserinfo() {

            if (document.getElementById("tbluid").value == "") {
                document.getElementById("tbluid").focus();
                alert("用户名不能为空！");
                return false;
            }
            if (document.getElementById("tblpwd").value == "") {
                document.getElementById("tblpwd").focus();
                alert("请填写密码！");
                return false;
            }

            if (document.getElementById("yzmText").value == "") {
                document.getElementById("yzmText").focus();
                alert("请填写验证码！");
                return false;
            }

        }
//-->
    </script>
    <script type="text/javascript">
        function $$(str) { return document.getElementById(str); }
        function tab(menu, menuEles, num, content, contentEles) {
            menu = $$(menu).getElementsByTagName(menuEles);
            content = $$(content).getElementsByTagName(contentEles);
            for (var i = 0; i < menu.length; i++) {
                if (i == num) {
                    menu[i].className = 'on';
                    content[i].className = 'show';
                } else {
                    menu[i].className = '';
                    content[i].className = 'hidden';
                }
            }
        }
        function switchMusic(oA) {
            if ($(oA).hasClass("stop")) {
                try {
                    document.getElementById("musicPlay").stop();
                } catch (e) {
                    $("#musicContainer").html("<p></p>");
                }
                $(oA).removeClass("stop").addClass("play");
            } else {
                try {
                    document.getElementById("musicPlay").play();
                } catch (e) {
                    $("#musicContainer").html("<embed src=\"uploads/mp3/amani.mp3\" autostart=\"true\" loop=\"false\" style=\"width: 1px;height: 1px;\" />");
                }
                $(oA).removeClass("play").addClass("stop");
            }
        }
    </script>
</head>
<body style="background:url(/images/bg_new.jpg) repeat-x;" >
    
    

    <form id="form1" runat="server">


    <div  class="usercenterbg" >
        
        
        <a href="/Index.aspx" class="link gohome"></a>
        <a href="game/game.exe" class="link download"></a>
        <a href="Index.aspx" class="link menu-home"></a>
        <a href="news_frame.aspx?flag=gamelist" class="link menu-game"></a>
        <a href="news_frame.aspx?flag=list3" class="link menu-help"></a>
        <a href="news_frame.aspx?flag=list1" class="link menu-news"></a>
        <a href="top_frame.aspx?flag=chongzhi" class="link menu-pay"></a>
        <a href="usercenter.aspx" class="link menu-prize"></a>
        <a href="news_frame.aspx?flag=product" class="link menu-charity"></a>
        <a href="top_frame.aspx?flag=kefu" class="link menu-service"></a>
        <a href="news_frame.aspx?flag=reg" class="link lunpan"></a>
        
 <div id="left" class="abs left smallfont">
    <iframe id="frameOp" name="frameOp" height="100%" width="100%" frameborder="0" src="left.aspx">
                    </iframe>
    </div>
    <div id="right" class="abs right smallfont">
    <iframe id="frameContent" name="frameContent" height="100%" width="100%" frameborder="0" src="account/myinfo.aspx">
                    </iframe>
    </div>
        
        
        
        
        
        
        
        <div class="abs footer smallfont">
          
          <div class="footer-link">
                  
                        <a href="#" target="_blank">客户中心</a>
                    | <a href="#" target="_blank">家长监护</a> | <a href="#"
                        target="_blank">诚聘英才</a> | <a href="#" target="_blank">商务合作</a>
                    | <a href="#" target="_blank">常见问题</a> | <a href="#" target="_blank">友情链接</a>
                </div>
            <div class="footer-title">
                <a href="#" target="_blank" style="margin-right: 80px">网络文化经营许可证号沪网文[2010]0574-031</a>
              
            </div>
            <div class="copyright">
                Copyright © 2011 UU游戏中心 版权所有 湘ICP备09007037号-1&nbsp;
            </div>
        </div>
    
    </form>
</body>
</html>
