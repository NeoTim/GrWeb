<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Left.aspx.cs" Inherits="EUGameSite.Admin.Manage_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="StyleCss/Manage.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="JScript/Jquery.js"></script>
    <script type="text/javascript" src="JScript/Admin.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="LeftNote">
    <img src="images/MenuTop.jpg"/><br /><img src="images/menu_topline.gif" alt=""/>
        <div class="Menu" id="l1" runat="server"><img src="images/computer_link.png"/>&nbsp;用户信息管理</div>
        <div class="MenuNote" id="l1_1" runat="server" style="display:block;">
            <img src="images/menu_topline.gif"  alt="" />
            <ul class="MenuUL">
                <li id="l2" runat="server"><a href="AdminManage.aspx" target="main">管理员管理</a></li>
                <li id="l3" runat="server"><a href="http://218.75.152.171:83/UserManage.asp" target="main">所有用户管理</a></li>
                
                <li id="l4" runat="server"><a href="Online.aspx" target="main">在线统计</a></li>
               
            </ul>
        </div>
                <div class="Menu" id="l5" runat="server"><img src="images/LookMes.gif"/>&nbsp;推广信息管理</div>
        <div class="MenuNote" id="l5_5" runat="server" style="display:none;">
            <img src="images/menu_topline.gif" alt="" />
            <ul class="MenuUL">
               
                <li id="l7" runat="server"><a href="Add_tui.aspx" target="main"> 添加推广员</a></li>
                <li id="l8" runat="server"><a href="Add_player.aspx" target="main">添加下线玩家</a></li>
             
               
            </ul>
        </div>
                <div class="Menu" id="l10" runat="server"><img src="images/LookMes.gif"/>&nbsp;新闻公告管理</div>
        <div class="MenuNote" id="l10_10" runat="server" style="display:none;">
            <img src="images/menu_topline.gif" alt="" />
            <ul class="MenuUL">
                <li id="l11" runat="server"><a href="News_Editor.aspx" target="main">添加新闻内容</a></li>
                <li id="l12" runat="server"><a href="News_Manage.aspx?flag=1" target="main">管理全部新闻</a></li>
                <li id="l13" runat="server"><a href="Ques_Editor.aspx" target="main">添加常见问题</a></li>
                <li id="l14" runat="server"><a href="News_Manage.aspx?flag=2" target="main">常见问题管理</a></li>
                <li id="l15" runat="server"><a href="Help_Editor.aspx" target="main">添加新手帮助</a></li>
                <li id="l16" runat="server"><a href="News_Manage.aspx?flag=3" target="main">新手帮助管理</a></li>  
                
                <li id="m13" runat="server"><a href="Huodong_Editor.aspx" target="main">添加最新活动</a></li>
                <li id="m14" runat="server"><a href="News_Manage.aspx?flag=6" target="main">最新活动管理</a></li>

                
                 <li id="m15" runat="server"><a href="Bisai_Editor.aspx" target="main">添加比赛信息</a></li>
                <li id="m16" runat="server"><a href="News_Manage.aspx?flag=7" target="main">比赛信息管理</a></li>

                  <li id="m17" runat="server"><a href="Duihuan_Editor.aspx" target="main">添加兑换信息</a></li>
                <li id="m18" runat="server"><a href="News_Manage.aspx?flag=8" target="main">兑换信息管理</a></li>


            </ul>
        </div>
        <div class="Menu" id="l18" runat="server"><img src="images/MillMes_ICO.gif"/>&nbsp;财务信息管理</div>
        <div class="MenuNote" id="l18_18" runat="server" style="display:none;">
            <img src="images/menu_topline.gif" alt="" />
            <ul class="MenuUL">
                <li id="l19" runat="server"><a href="zhuan.aspx" target="main">玩家转账信息</a></li>
                 <li id="l20" runat="server"><a href="Chongzhi.aspx" target="main">玩家充值信息</a></li>
                    <li id="l21" runat="server"><a href="Tongji.aspx" target="main">统计游戏币</a></li>
                    <li id="l22" runat="server"><a href="http://218.75.152.171:83/pro_list.asp" target="main">玩家兑换信息</a></li>
                    <li id="l23" runat="server"><a href="Choushui.aspx" target="main">单个房间抽水查询</a></li>
                    <li id="l24" runat="server"><a href="AllChoushui.aspx" target="main">所有房间抽水查询</a></li>
                    <li id="l25" runat="server"><a href="Gamelog.aspx" target="main">普通玩家每局游戏记录</a></li>
                    
                    <li id="l26" runat="server"><a href="Gamelog1.aspx" target="main">机器人每局游戏记录</a></li>
                      <li id="l27" runat="server"><a href="logrank.aspx" target="main">赢得游戏币排行 </a></li>
                      
            </ul>


        </div>
        <div class="Menu" id="l28" runat="server"><img src="images/News.gif"/>&nbsp;游戏信息管理</div>
        <div class="MenuNote" id="l28_28" runat="server" style="display:none;">
            <img src="images/menu_topline.gif" alt="" />
            <ul class="MenuUL">
                
                <li id="l30" runat="server"><a href="GameInro_Editor.aspx" target="main">添加游戏介绍</a></li>
                <li id="l31" runat="server"><a href="News_Manage.aspx?flag=4" target="main">游戏介绍管理</a></li>
                
            </ul>
        </div>
         <div class="Menu" id="l32" runat="server"><img src="images/News.gif"/>&nbsp;后台权限管理</div>
        <div class="MenuNote" id="l32_32" runat="server" style="display:none;">
            <img src="images/menu_topline.gif" alt="" />
            <ul class="MenuUL">
                <li id="l33" runat="server"><a href="AddGroup.aspx" target="main">添加管理员组</a></li>
                <li id="l34" runat="server"><a href="AllUserManager.aspx" target="main">修改管理员组</a></li>
               
                
            </ul>
        </div>
       
    </div>
    </form>
</body>
</html>
