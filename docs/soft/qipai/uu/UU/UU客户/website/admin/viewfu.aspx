<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewfu.aspx.cs" Inherits="EUGameSite.Admin.viewfu" %>

<%@ Register Assembly="cn.K2046.ServerControl" Namespace="cn.K2046.ServerControl" TagPrefix="QinDeke" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WebSite</title>
    <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />

    <script language="javascript" src="JScript/javascript.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
        <table cellpadding="0" cellspacing="0" border="0" class="Manage_Table">
            <tr>
                <td class="Manage_Header">
                    <asp:Label ID="普通玩家信息" Text="普通玩家信息" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 30px; padding: 5px;" align="center">
                <table><tr><td>筛选条件：</td><td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" 
                        Width="138px">
                        <asp:ListItem>普通玩家</asp:ListItem>
                        <asp:ListItem>机器人</asp:ListItem>
                    </asp:DropDownList></td><td style="height: 20px; width:20px;"></td><td><asp:Button ID="btnsearch" runat="server" CssClass="K2046_Button" Text="搜索" onclick="btnsearch_Click" 
                         /></td><td>
                    </td><td>
                    <asp:Button ID="reset" runat="server" CssClass="K2046_Button" Text="更正数据" 
                             Width="74px" onclick="reset_Click" 
                         /></td></tr></table>
                   </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GV" runat="server" CellPadding="4"  BackColor="#3366FF"
                    EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
                    Width="800px" PageSize="15" AllowPaging="True" 
                    onpageindexchanging="GV_PageIndexChanging" 
                    onselectedindexchanged="GV_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5555FF" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#5555FF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView></td>
              
            </tr>
          
        </table>
    </form>
</body>
</html>

