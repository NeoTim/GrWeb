<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help_frame.aspx.cs" Inherits="GameWeb.help_frame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/news_frame.css" rel="stylesheet" type="text/css" /><title>
	UU游戏中心
</title>
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


    <div class="main1" id="main">
        
        <a href="jiekou_renwu.aspx" class="link getmoney"></a><a href="/Index.aspx" class="link gohome">
        </a><a href="/download.aspx" class="link download"></a><a href="/Index.aspx" class="link menu-home">
        </a><a href="/games1.aspx" class="link menu-game"></a><a href="/about/xinsou.aspx"
            class="link menu-help"></a><a href="/news.aspx?typeid=3&type=news" class="link menu-news">
            </a><a href="/bank/Index.aspx" class="link menu-pay"></a><a href="/duijiang/Index.aspx"
                class="link menu-prize"></a><a href="/news.aspx?typeid=12&type=cisan" class="link menu-charity">
                </a><a href="/kefu/cengnuo.aspx" class="link menu-service"></a>
        <div id="gt_pl" class="member-login smallfont">
            
            <ul>
                <li><span>账号：</span><input name="tbluid" type="text" id="tbluid" class="commyzm" style="width:95px;" runat="server" /></li>
                <li><span>密码：</span><input name="tblpwd" type="password" id="tblpwd" class="commyzm" style="width:95px;" runat="server" /></li>
                <li><span>验证：</span><input name="yzmText" type="text" id="yzmText" class="commyzm" style="width: 40px;" runat="server" />
                    <img src="ImageCode.ashx" alt="验证码" style="cursor: pointer;" onclick="this.src=this.src+'?'+Math.random();"
                        />
                </li>
                <li class="button">
                <asp:ImageButton ID="ImageButtonLogin" runat="server" ImageUrl="images/blank.gif"  onClientClick="return index_checkuserinfo();"  style="height:18px;width:150px;border-width:0px;"></asp:ImageButton></li>
                <li class="register"><a href="reg.aspx">免费注册</a> <a href="find_pwd.aspx">忘记密码</a></li>
            </ul>
            
        </div>
        <div class="abs index-ads">
            
 <iframe id="show" frameborder="0" style="width:700px; height:800px;" name="show" scrolling="yes" src="<%=url %>"></iframe>
        </div>
        <div id="help" class="abs help smallfont">
            
                    <ul>
                                    
                    <asp:Repeater ID="Repeater_help" runat="server">
                                <ItemTemplate>
                                    <li>·<a href="New_Frame.aspx?id=<%#Eval("ID") %>" target="_blank"><%#Eval("tit") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                
                
                
                    </ul>
                
        </div>
           <ul class="abs contact">
            <li><span><a href="http://wpa.qq.com/msgrd?V=1&Uin=800013776&Site=阿曼尼棋牌&Menu=yes"
                target="_blank">800013776</a></span></li>
            <li style="padding-top: 5px;">18964845985</li>
            <li style="padding-top: 9px">4000608889</li>
        </ul>
        </div>
        <div class="abs footer smallfont">
          <div class="footer-link">
                    <a href="about/about.aspx" target="_blank">关于我们</a> | <a href="about/service.aspx"
                        target="_blank">服务条款</a> | <a href="about/service.aspx" target="_blank">客户中心</a>
                    | <a href="jianhu/index.aspx" target="_blank">家长监护</a> | <a href="about/job.aspx"
                        target="_blank">诚聘英才</a> | <a href="about/partner.aspx" target="_blank">商务合作</a>
                    | <a href="about/help.aspx" target="_blank">常见问题</a> | <a href="about/links.aspx" target="_blank">友情链接</a>
                </div>
            <div class="footer-title">
                <a href="about/zizi.aspx" target="_blank" style="margin-right: 80px">网络文化经营许可证号沪网文[2010]0574-031</a>
                <a href="about/zizi.aspx" target="_blank">增值电信业务经营许可证 B2-20090046</a>
            </div>
            <div class="copyright">
                Copyright &copy; 2011 上海龙明网络科技有限公司 版权所有 <a href="http://www.miibeian.gov.cn" target="_blank">
                    沪ICP备10214982号</a>
            </div>
        </div>
    
    
</form>
</body>
</html>
