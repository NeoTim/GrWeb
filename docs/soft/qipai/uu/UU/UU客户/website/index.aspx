<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EUGameSite.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>
	UU游戏中心首页
</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link href="css/index_new.css" rel="stylesheet" type="text/css" />

<link href="css/h.css" type="text/css" rel="stylesheet" />

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
    <script type="text/javascript" src="js/marquee.js"></script>
    <script type="text/javascript">
      

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
   
    
    

    <form id="form1" runat="server">


    <div class="main" id="main">
        
      <a href="http://yx.198uu.com/news_frame.aspx?flag=product" class="link getmoney"></a> <a href="/Index.aspx" class="link gohome"></a> <a href="game/game.exe" class="link download"></a> <a href="Index.aspx" class="link menu-home"></a> <a href="news_frame.aspx?flag=gamelist" class="link menu-game"></a> <a href="news_frame.aspx?flag=list3" class="link menu-help"></a> <a href="news_frame.aspx?flag=list1" class="link menu-news"></a> <a href="usercenter.aspx" class="link menu-prize"></a> <a href="news_frame.aspx?flag=product" class="link menu-charity"></a> <a href="http://222.188.93.248:83" class="link menu-service"></a> 
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
        <div class="abs index-ads">
            
<script type="text/javascript" src="/js/swfobject.js"></script>
  <script type="text/javascript">

      var focus_width = 490//宽度
      var focus_height = 135//高度
      var text_height = 0//焦点字框高度 (单位为px)
      var swf_height = focus_height + text_height

      var imgUrl = new Array();
      var imgLink = new Array();
      var imgtext = new Array();
      var imgAlt = new Array();
      var adNum = 0;
      imgUrls = "Uploads/4.jpg|Uploads/3.jpg|Uploads/2.jpg|Uploads/5.jpg";
      imgtexts = "注册有礼乐不停|三等奖|二等奖|一等奖";
      imgLinks = "";
      imgAlts = "新图.jpg|3.jpg|2.jpg|1.jpg";

      var pics = imgUrls
      var links = imgLinks
      var texts = imgtexts

      var opObjectParams = {};
      opObjectParams.wmode = "transparent";
      opObjectParams.menu = "false";
      var flashvars = {}
      flashvars.pics = pics;
      flashvars.links = links;
      flashvars.texts = texts;
      flashvars.textheight = text_height;
      flashvars.borderwidth = focus_width;
      flashvars.borderheight = focus_height;
      $(function () {
          swfobject.embedSWF("/Uploads/pixviewer.swf", "ads", focus_width, focus_height, "9.0.0", "/images/expressInstall.swf", flashvars, opObjectParams);
      });
                                    </script>
            <span id="ads"></span>
        </div>
        <div id="demod1" class="abs demod smallfont">
            
                    <ul>
                                    
                    <asp:Repeater ID="repNotific" runat="server">
                                <ItemTemplate>
                                    <li><img src="images/icon-0.gif" alt="" /><a href="News_Frame.aspx?id=<%#Eval("ID") %>" target="_blank"><%#Eval("tit") %></a></li>
                                </ItemTemplate>
                      </asp:Repeater>
                
                
                
                    </ul>
                
        </div>
         <div id="ques" class="abs ques smallfont">
            
                    <ul>
                                    
                    <asp:Repeater ID="Repeater_Ques" runat="server">
                                <ItemTemplate>
                                    <li><img src="images/icon-0.gif" alt="" /><a href="News_Frame.aspx?id=<%#Eval("ID") %>" target="_blank"><%#Eval("tit") %></a></li>
                                </ItemTemplate>
                      </asp:Repeater>
                
                
                
                    </ul>
                
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
        <div id="ad" class="abs ad smallfont">
            
                  
                
            <asp:Image ID="imgad" runat="server" Height="75px" Width="500px" 
                ImageUrl="~/images/b.jpg" />
            
                  
                
        </div>
        <div id="row4" class="abs headpic smallfont index_midListBg">
        <div id="albumList" class="content">
                <div id="marquee" class="marquee">
                    <div>
                        
                           
                                <ul>
                          
                            
                                <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head01 .gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                 <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head02 .gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                       <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head03 .gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                       <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head04.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head05.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head06.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head07.gif" alt=""  />
                                        
                                    </div></li>
                                      <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head08.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head09.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head10.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head11.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head12.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head13.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head14.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  <li>
                                    <div class="img">
                                        
                                            <img src="images/headpic/head15.gif" alt=""  />
                                        
                                    </div>
                                  
                                </li>
                                  
                             
                       

                       
                                </ul>
                        
                    </div>
                </div>
               
          </div>
                 <script type="text/javascript">
                     var mar = new Marquee("marquee");
                     mar.Direction = 0;
                     mar.Width = 460;
                     mar.Height = 110;
                     mar.Speed = 30;
                     mar.Space = 0;
                     mar.Tag = "ul";
                     mar.Start();
                </script>
        </div>
        <ul id="newsListMenu" class="abs menu" style="width: 360px">
            <li class="on"><a class="lastest" onmouseover="tab('newsListMenu','li',0,'newsList','div')"
                href="javascript:void(0);">全 部</a></li>
            <li><a class="news" onmouseover="tab('newsListMenu','li',1,'newsList','div')" href="javascript:void(0);">
                新 闻</a></li>
            <li><a class="act" onmouseover="tab('newsListMenu','li',2,'newsList','div')" href="javascript:void(0);">
                活 动</a></li>
            <li><a class="annou" onmouseover="tab('newsListMenu','li',3,'newsList','div')" href="javascript:void(0);">
                法 规</a></li>
        </ul>
        <div id="newsList" class="abs notice smallfont">
            <div class="show">
                
                         <asp:Repeater ID="new_News" runat="server">
                                <ItemTemplate>
                                    <li style="line-height:21px"><img src="images/star.gif" alt="" /><a href="News_Frame.aspx?id=<%#Eval("ID") %>" title="<%#Eval("tit") %>"> <%#Eval("tit") %> </a></li>
                                </ItemTemplate>
              </asp:Repeater>
                    
                <p style="text-align: right; padding-top: 5px;">
                    <a href="#">更多...</a></p>
            </div>
            <div class="hidden">
                
                        <asp:Repeater ID="Huodong" runat="server">
                                <ItemTemplate>
                                    <li style="line-height:21px"><img src="images/star.gif" alt="" /><a href="News_Frame.aspx?id=<%#Eval("ID") %>" title="<%#Eval("tit") %>" > <%#Eval("tit") %> </a></li>
                                </ItemTemplate>
              </asp:Repeater>
                    
                
            </div>
            <div class="hidden">
                
                        <asp:Repeater ID="Bisai" runat="server">
                                <ItemTemplate>
                                    <li  style="line-height:21px"><img src="images/star.gif" alt="" /><a href="News_Frame.aspx?id=<%#Eval("ID") %>" title="<%#Eval("tit") %>">  <%#Eval("tit") %> </a> </li>
                                </ItemTemplate>
              </asp:Repeater>
                
            </div>
            <div class="hidden">
                
                      <asp:Repeater ID="Duihuan" runat="server">
                                <ItemTemplate>
                                    <li  style="line-height:21px"><img src="images/star.gif" alt="" /> <a href="News_Frame.aspx?id=<%#Eval("ID") %>" title="<%#Eval("tit") %>"> <%#Eval("tit") %> </a> </li>
                                </ItemTemplate>
              </asp:Repeater>
                    
            </div>
        </div>
        <ul class="abs contact">
            <li><span><a href="http://wpa.qq.com/msgrd?V=1&Uin=69260668&Site=UU游戏中心Menu=yes"
                target="_blank"><img border="0" src=http://wpa.qq.com/pa?p=1:69260668:1 alt="点击这里给我发消息" /></a></span></li>
           
            <li ><span><a href="http://wpa.qq.com/msgrd?V=1&Uin=99292686Site=UU游戏中心&Menu=yes"
                target="_blank"><img border="0" src=http://wpa.qq.com/pa?p=1:99292686:1 alt="点击这里给我发消息" /></a></li>
      </ul>
        <div class="abs jf">
            <table cellpadding="0" cellspaceing="0">
  <tr>
  <td>
  <asp:Image ID="Image1" runat="server" Height="75px" Width="493px" 
          ImageUrl="~/images/-1.jpg" />
  </td>
  </tr>
  <tr>
  <td>
  <div id="demo" style="overflow:hidden; height:78px; width:490px">
                    <table border="0" align="center" cellpadding="0" cellspacing="0" cellspace="0">
          
                      <tr>
                        <td id="demo1" valign="top"><table width="170" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                          
                              <td><div style="border:2px solid #CCCCCC; background:#FFFFFF; margin-right:5px;"><a href="http://yx.198uu.com/news_frame.aspx?flag=product"><img src="images/11.jpg" width="114" height="75" border="0" alt=""></a></div></td>
                
                              <td><div style="border:2px solid #CCCCCC; background:#FFFFFF; margin-right:5px;"><a href="http://yx.198uu.com/news_frame.aspx?flag=product"><img src="images/22.gif" width="114" height="75" border="0" alt=""></a></div></td>
                              <td><div style="border:2px solid #CCCCCC; background:#FFFFFF;  margin-right:5px;"><a href="http://yx.198uu.com/news_frame.aspx?flag=product"><img src="images/33.gif" width="114" height="75" border="0" alt=""></a></div></td>
                              <td><div style="border:2px solid #CCCCCC; background:#FFFFFF;  margin-right:5px;"><a href="http://yx.198uu.com/news_frame.aspx?flag=product"><img src="images/44.gif" width="114" height="75" border="0" alt=""></a></div></td>
                              <td><div style="border:2px solid #CCCCCC; background:#FFFFFF; margin-right:5px;"><a href="http://yx.198uu.com/news_frame.aspx?flag=product"><img src="images/55.jpg" width="114" height="75" border="0" alt=""></a></div></td>           
                            </tr>
                          </table></td>
                        <td id="demo2" valign="top"></td>
                      </tr>
                    </table>
            </div>   <script>
var speed=30
demo2.innerHTML=demo1.innerHTML
function Marquee(){
if(demo2.offsetWidth-demo.scrollLeft<=0)
demo.scrollLeft-=demo1.offsetWidth
else{
demo.scrollLeft++
}
}
var MyMar=setInterval(Marquee,speed)
demo.onmouseover=function() {clearInterval(MyMar)}
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
</script>
  </td>
  </tr>
  </table>
                    
                
              
                
        </div>
        <div class="abs hotgames">
           <p>
                <a href="news_frame.aspx?flag=gamelist">
                    <img id="Img9" alt="" src="11.gif" width="82" height="75"/></a><a href="news_frame.aspx?flag=gamelist">
                      <img id="Img9" alt="" src="22.gif" width="82" height="75"/></a></p>
           <p>
                <a href="news_frame.aspx?flag=gamelist">
                    <img id="Img9" alt="" src="33.gif" width="82" height="75"/></a>
        
                <a href="news_frame.aspx?flag=gamelist">
                 <img id="Img9" alt="" src="44.gif" width="82" height="75"/></a></p>
      </div>
        <div class="abs footer smallfont">
          
          <div class="footer-link">
            <div>
              <div>Copyright (c) 2007 - 2011 江苏天一网络技术有限公司 版权所有苏ICP备11030058号</div>
              <div></div>
              <div>健康游戏忠告：抵制不良游戏，拒绝盗版游戏，注意自我保护，谨防受骗上当，适度游戏益脑，沉迷游戏伤身，合理安排时间，享受健康生活。 </div>
              <div>禁止任何利用本平台游戏进行赌博的行为，让我们共同净化游戏环境，一旦发现有违反用户协议的行为，我们将立即封杀账号！ </div>
            </div>
            <div></div>
          </div>
      </div>
        <a href="top_frame.aspx?flag=chongzhi" class="link menu-pay"></a>z
    </div>
    
  
    </form>
</body>
</html>
