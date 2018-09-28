<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGroup.aspx.cs" Inherits="EUGameSite.Admin.AddGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
     <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="Body_Title">用户信息管理 》》管理员管理</div>
      <table cellpadding="0" cellspacing="0" border="0" class="Manage_Table">
        <tr>
            <td class="Manage_Header" colspan="4">管理员组添加</td>
        </tr>
        
        <tr>
            <td width="200"></td><td class="style1">管理员组名称：</td><td>
            <asp:TextBox ID="tbxname" runat="server" Width="185px"></asp:TextBox>
            </td><td></td>
        </tr> 
      
         
         
        
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="确认添加" Width="73px" 
                    OnClientClick="return checkInput()" onclick="Button1_Click" />
            </td><td></td>
        </tr> 
        
    </table>
    </div>
    </form>
</body>
</html>
