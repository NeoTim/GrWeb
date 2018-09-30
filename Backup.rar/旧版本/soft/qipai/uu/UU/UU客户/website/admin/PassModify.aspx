<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassModify.aspx.cs" Inherits="EUGameSite.Admin.PassModify" %>

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
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">用户信息管理 》》重置用户密码</div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    <div style=" width:100px">
  
    <table style="width:800px; height: 120px;" border="1px">
        <tr>
            <td align="center" bgcolor="#3366FF" class="style1" colspan="2">
                重置用户登录密码</td>
        </tr>
  
        <tr>
            <td align="right" class="style2">
                登录密码：</td>
            <td>
                <asp:TextBox ID="tbxmoneyZ" runat="server" Width="205px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnZ" runat="server" Text="确定重置密码" Width="133px" 
                    onclick="btnZ_Click" />
            </td>
        </tr>
        </table><br><br>
        <table style="width:800px; height: 120px;" border="1px">
        <tr>
            <td align="center" bgcolor="#3366FF" class="style1" colspan="2">
                重置用户银行密码</td>
        </tr>
    
        <tr>
            <td align="right" class="style2">
                银行密码：</td>
            <td>
                <asp:TextBox ID="tbxmoneyJ" runat="server" Width="205px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnJ" runat="server" Text="确定重置密码" Width="133px" 
                    onclick="btnJ_Click" />
            </td>
        </tr>
        </table><br><br>
        
    
    
  
    
  
    </form>
    </body>
</html>
