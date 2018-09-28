<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news_frame.aspx.cs" Inherits="GameWeb.news_frame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>

	UU游戏中心
</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/news_frame.css" rel="stylesheet" type="text/css" />

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
<body>
    <div style="width: 1px; height: 1px; position: absolute;" id="musicContainer">
        <embed src="uploads/mp3/amani.mp3" id="musicPlay" autostart="true" loop="false" style="width: 1px;
            height: 1px;">
    </div>
    
    
    <a href="Javascript:void(0)" class="link stop" onclick="switchMusic(this)"></a>
    <!-- JiaThis Button BEGIN -->
    <script type="text/javascript" src="http://v1.jiathis.com/code/jiathis_r.js?type=left&amp;move=0&amp;btn=l1.gif"
        charset="utf-8"></script>
    <!-- JiaThis Button END -->
    <form name="form1" method="post" action="index.aspx" id="form1" runat="server">


    <div class="main" id="main">
        
      <a href="#" class="link getmoney">
      <asp:ImageButton ID="ImageButton1" 
            runat="server" ImageUrl="~/images/tuzi.png" onclick="ImageButton1_Click"></asp:ImageButton></a>
        <a href="/Index.aspx" class="link gohome"></a>
        <a href="game/game.exe" class="link download"></a>
        <a href="top_frame.aspx?flag=kefu" class="link menu-service"></a>
          
        <a href="Index.aspx" class="link menu-home"></a>
        <a href="news_frame.aspx?flag=gamelist" class="link menu-game"></a>
        <a href="news_frame.aspx?flag=list1" class="link menu-news"></a>
        <a href="top_frame.aspx?flag=chongzhi" class="link menu-pay"></a>
        <a href="usercenter.aspx" class="link menu-prize"></a>
        <a href="news_frame.aspx?flag=product" class="link menu-charity"></a>
    <a href="http://222.188.93.248:83" class="link menu-service"></a>
<div id="gt_pl" class="member-login smallfont">
            
            <ul>
                <li><span>账号：</span><input name="tbluid" type="text" id="txt_name"  style="width:95px;" runat="server" /></li>
                <li><span>密码：</span><input name="tblpwd" type="password" id="txt_pwd"  style="width:95px;" runat="server" /></li>
                <li><span>验证：</span><input name="yzmText" type="text" id="txt_yz"  style="width: 40px;" runat="server" /> <a href="javascript:getimgcode()"><asp:Image ID="getcode" src="VerifyCode.aspx" runat="server" /></a>
                </li>
                <li class="button">
                <asp:ImageButton ID="ImageButtonLogin" runat="server" 
                        ImageUrl="~/images/index_new3_05.gif"    
                        style="height:23px;width:68px;border-width:0px;" 
                        onclick="ImageButtonLogin_Click"></asp:ImageButton>&nbsp;&nbsp;&nbsp;&nbsp;<a href="reg.aspx"><img src="images/index_new3_03.gif" width="68" height="23" border="0" alt=""></a></li>
             

            </ul>
            
      </div>
    <div class="abs index-ads-up">
            
 
      </div>
        <div class="abs index-ads">
            
 <iframe id="show" frameborder="0" style="width:700px; height:800px;" name="show" scrolling="yes" src="<%=url %>"></iframe>
        </div>
        <div id="help" class="abs help smallfont">
            
                    <ul>
                                    
                    <asp:Repeater ID="Repeater_help" runat="server" 
                            onitemcommand="Repeater_help_ItemCommand">
                                <ItemTemplate>
                                    <li><img src="images/icon-0.gif" alt="" /><a href="News_Frame.aspx?id=<%#Eval("ID") %>" target="_blank"><%#Eval("tit") %></a></li>
                                </ItemTemplate>
                      </asp:Repeater>
                
                
                
                    </ul>
                
        </div>
        
          <ul class="abs contact">
            <li><span><a href="http://wpa.qq.com/msgrd?V=1&Uin=69260668&Site=UU游戏中心Menu=yes"
                target="_blank"><img border="0" SRC=http://wpa.qq.com/pa?p=1:69260668:1 alt="点击这里给我发消息"></a></span></li>
            
            <li ><span><a href="http://wpa.qq.com/msgrd?V=1&Uin=99292686&Site=UU游戏中心&Menu=yes"
                target="_blank"><img border="0" SRC=http://wpa.qq.com/pa?p=1:99292686:1 alt="点击这里给我发消息"></a></li>
      </ul>
        <a href="news_frame.aspx?flag=list3" class="link menu-help"></a>
      </div>
        <div class="abs footer smallfont">
          
          <div class="footer-link">
            <div><br />
            </div>
            <div>Copyright (c) 2007 - 2011 江苏天一网络技术有限公司 版权所有苏ICP备11030058号</div>
            <div></div>
            <div>健康游戏忠告：抵制不良游戏，拒绝盗版游戏，注意自我保护，谨防受骗上当，适度游戏益脑，沉迷游戏伤身，合理安排时间，享受健康生活。 </div>
            <div>禁止任何利用本平台游戏进行赌博的行为，让我们共同净化游戏环境，一旦发现有违反用户协议的行为，我们将立即封杀账号！ </div>
          </div>
            </div>
    
    
</form>
</body>
</html>
