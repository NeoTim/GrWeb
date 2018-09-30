<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="powermodify.aspx.cs" Inherits="EUGameSite.Admin.powermodify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
     <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
    <style type="text/css">
        .style1
        {
            width: 197px;
        }
        .style2
        {
            width: 177px;
        }
        .style3
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="Body_Title">系统信息管理 》》权限信息管理</div>
    <table cellpadding="0" cellspacing="0" border="0" class="Manage_Table3">
        <tr>
            <td class="Manage_Header">管理员组权限分配</td>
        </tr>
        
        <tr>
            <td><table style="width:700px;"><tr><td class="style1">&nbsp;</td><td class="style2">
                <img alt="" src="images/用户信息管理.png" /></td><td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
                </td></tr><tr><td class="style1">&nbsp;</td><td class="style2" align="center">管理员管理</td>
                    <td class="style3">
                <asp:CheckBox ID="CheckBox2" runat="server" Enabled="False" Text="*此权限禁止分配" />
                    </td></tr><tr><td class="style1">&nbsp;</td><td class="style2" align="center">所有用户管理</td><td>
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">在线统计</td><td>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">
                        <img alt="" src="images/推广信息管理.png" /></td><td>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">推广管理</td><td>
                    <asp:CheckBox ID="CheckBox6" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加推广员</td><td>
                    <asp:CheckBox ID="CheckBox7" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加下线玩家</td><td>
                    <asp:CheckBox ID="CheckBox8" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加推广员用户</td><td>
                    <asp:CheckBox ID="CheckBox9" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">
                        <img alt="" src="images/新闻公告管理.png" /></td><td>
                    <asp:CheckBox ID="CheckBox10" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加新闻内容</td><td>
                    <asp:CheckBox ID="CheckBox11" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">管理全部新闻</td><td>
                    <asp:CheckBox ID="CheckBox12" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加常见问题</td><td>
                    <asp:CheckBox ID="CheckBox13" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">常见问题管理</td><td>
                    <asp:CheckBox ID="CheckBox14" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加新手帮助</td><td>
                    <asp:CheckBox ID="CheckBox15" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">新手帮助管理</td><td>
                    <asp:CheckBox ID="CheckBox16" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">留言管理</td><td>
                    <asp:CheckBox ID="CheckBox17" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">
                        <img alt="" src="images/财务信息管理.png" /></td><td>
                    <asp:CheckBox ID="CheckBox18" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">玩家转账信息</td><td>
                    <asp:CheckBox ID="CheckBox19" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">玩家充值信息</td><td>
                    <asp:CheckBox ID="CheckBox20" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">统计游戏币</td><td>
                    <asp:CheckBox ID="CheckBox21" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">玩家兑换信息</td><td>
                    <asp:CheckBox ID="CheckBox22" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">单个房间抽水查询</td><td>
                    <asp:CheckBox ID="CheckBox23" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">所有房间抽水查询</td><td>
                    <asp:CheckBox ID="CheckBox24" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">普通玩家每局游戏记录</td><td>
                    <asp:CheckBox ID="CheckBox25" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">机器人每局游戏记录</td><td>
                    <asp:CheckBox ID="CheckBox26" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">赢得游戏币排行</td><td>
                    <asp:CheckBox ID="CheckBox27" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">
                        <img alt="" src="images/游戏信息管理.png" /></td><td>
                    <asp:CheckBox ID="CheckBox28" runat="server" />
<tr><td class="style1">&nbsp;</td><td class="style2" align="center">网站首页广告</td><td>
                    <asp:CheckBox ID="CheckBox29" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">添加游戏介绍</td><td>
                    <asp:CheckBox ID="CheckBox30" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">游戏介绍管理</td><td>
                    <asp:CheckBox ID="CheckBox31" runat="server" />
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">
                        <img alt="" src="images/后台权限管理.png" /></td><td class="style3">
                    <asp:CheckBox ID="CheckBox32" runat="server" Enabled="False" Text="*此权限禁止分配" />
                        </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">查看管理组</td>
                        <td class="style3">
                    <asp:CheckBox ID="CheckBox33" runat="server" Enabled="False" Text="*此权限禁止分配" />
                        </td></tr>
                    </td></tr>
                    <tr><td class="style1">&nbsp;</td><td class="style2" align="center">修改管理员组</td>
                        <td class="style3">
                    <asp:CheckBox ID="CheckBox34" runat="server" Enabled="False" Text="*此权限禁止分配" />
                        </td></tr>
                            <tr><td class="style1">&nbsp;</td><td class="style2" align="center">&nbsp;</td>
                        <td class="style3">
                            &nbsp;</td></tr>
                            <tr><td class="style1">&nbsp;</td><td class="style2" align="center">
                                <asp:Button ID="btnQD" runat="server" onclick="Button1_Click" Text="确定修改" 
                                    Width="93px" />
                                </td>
                        <td class="style3">
                            &nbsp;</td></tr>
                            <tr><td class="style1">&nbsp;</td><td class="style2" align="center">&nbsp;</td>
                        <td class="style3">
                            &nbsp;</td></tr></table>
                </td>
        </tr> 
    </table>
    </div>
    </form>
</body>
</html>
