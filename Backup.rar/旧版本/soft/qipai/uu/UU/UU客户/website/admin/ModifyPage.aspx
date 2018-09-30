<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyPage.aspx.cs" Inherits="EUGameSite.Admin.ModifyPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        #show
        {
            width: 749px;
        }
        .style1
        {
            height: 22px;
        }
        .style2
        {
            width: 317px;
        }
        .style3
        {
            color: #FF3300;
        }
        .style4
        {
            color: #FF0000;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">用户信息管理 》》所有用户管理</div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    <div style=" width:100px"><asp:Button ID="rt" runat="server" Text="返回" 
            onclick="rt_Click" Width="84px"></asp:Button></div>
  
    <table style="width:800px; height: 120px;" border="1px">
        <tr>
            <td align="center" bgcolor="#3366FF" class="style1" colspan="2">
                增加用户游戏币</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                用户名：</td>
            <td>
                <asp:TextBox ID="tbxnameZ" runat="server" Width="207px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                添加游戏币：</td>
            <td>
                <asp:TextBox ID="tbxmoneyZ" runat="server" Width="205px"></asp:TextBox>
                <span class="style3">增游戏币</span></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnZ" runat="server" Text="保存修改结果" Width="133px" 
                    onclick="btnZ_Click" />
            </td>
        </tr>
        </table><br><br>
        <table style="width:800px; height: 120px;" border="1px">
        <tr>
            <td align="center" bgcolor="#3366FF" class="style1" colspan="2">
                减少用户游戏币</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                用户名：</td>
            <td>
                <asp:TextBox ID="tbxnameJ" runat="server" Width="207px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                减少游戏币：</td>
            <td>
                <asp:TextBox ID="tbxmoneyJ" runat="server" Width="205px"></asp:TextBox>
                <span class="style4">减游戏币</span></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnJ" runat="server" Text="保存修改结果" Width="133px" 
                    onclick="btnJ_Click" />
                <asp:Label ID="lblTip" runat="server"></asp:Label>
            </td>
        </tr>
        </table><br><br>
        <table style="width:800px; height: 120px;" border="1px">
        <tr>
            <td align="center" bgcolor="#3366FF" class="style1" colspan="2">
                修改推广抽水比例</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                用户名：</td>
            <td>
                <asp:TextBox ID="tbxnameCS" runat="server" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                添加游戏币：</td>
            <td>
                <asp:TextBox ID="tbxCSBL" runat="server" Width="205px"></asp:TextBox>
                <font color="#ff0000">设置范围0----100</font></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnCS" runat="server" Text="保存修改结果" Width="133px" 
                    onclick="Button3_Click" />
            </td>
        </tr>
        </table>
    
    
  
    
  
    </form>
    </body>
</html>
