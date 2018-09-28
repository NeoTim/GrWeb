<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Top.aspx.cs" Inherits="EUGameSite.Admin.Manage_Top1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="StyleCss/Base.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="TopBack">
        <div class="TopMes">欢迎你：<font color=red>[<%=admin %>]</font>&nbsp;&nbsp;
        <a href="../index.aspx" target="_blank" style="color:#fff;">[预览前台]</a>&nbsp;&nbsp;
         <a href="Login.aspx" target="_self" style="color:#fff;">[重新登录]</a>&nbsp;&nbsp;
        <asp:LinkButton ID="LBQuit" runat="server" Font-Bold="True" ForeColor="White" 
            onclick="LBQuit_Click" OnClientClick='return confirm("你确定退出管理系统吗？") '>[退出管理]</asp:LinkButton>
        </div>
        <img src="Images/TopLogo.jpg" alt="后台管理系统..." style="float:right;"/>
    </div>
    </form>
</body>
</html>
