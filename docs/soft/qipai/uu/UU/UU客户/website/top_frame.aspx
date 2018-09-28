<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top_frame.aspx.cs" Inherits="EUGameSite.top_frame" %>
<%@ Register Src="~/uc/HeadSelect.ascx" TagName="hs" TagPrefix="UC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	UU游戏中心
</title>


<link href="css/index_new.css" rel="stylesheet" type="text/css" />    
</head>
<body style="background:url(/images/bg_new.jpg) repeat-x;" >
    <form id="form1" runat="server">
<div class="chongzhibg">
   <a href="jiekou_renwu.aspx" class="link getmoney"></a>
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
 <div class="abs chongzhi smallfont">  <iframe id="frameContent" name="frameContent" height="100%" width="100%" frameborder="0" src="<%=url %>">
                    </iframe></div>

    </div>
    <div class="abs footer smallfont">
          
          <div class="footer-link">
            <div>Copyright (c) 2007 - 2011 江苏天一网络技术有限公司 版权所有苏ICP备11030058号</div>
            <div></div>
            <div>健康游戏忠告：抵制不良游戏，拒绝盗版游戏，注意自我保护，谨防受骗上当，适度游戏益脑，沉迷游戏伤身，合理安排时间，享受健康生活。 </div>
            <div>禁止任何利用本平台游戏进行赌博的行为，让我们共同净化游戏环境，一旦发现有违反用户协议的行为，我们将立即封杀账号！ </div>
          </div>
            </div>
    </form>
    
</body>
</html>
