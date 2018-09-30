<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selecthead.aspx.cs" Inherits="EUGameSite.uc.Selecthead" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body topmargin="0" bgcolor="#edfbff">
    <form id="form1" runat="server">
    <div>
        <table style="width: 124px">
            <tr>
                <td colspan="3" style="text-align: center; height: 106px;">
                    <asp:Image ID="Image1" runat="server" BorderStyle="Groove" BorderWidth="3px" /></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        Width="96px">
                        <asp:ListItem Value="01.gif" Selected="True">用户头像01</asp:ListItem>
                        <asp:ListItem Value="02.gif">用户头像02</asp:ListItem>
                        <asp:ListItem Value="03.gif">用户头像03</asp:ListItem>
                        <asp:ListItem Value="04.gif">用户头像04</asp:ListItem>
                        <asp:ListItem Value="05.gif">用户头像05</asp:ListItem>
                        <asp:ListItem Value="06.gif">用户头像06</asp:ListItem>
                        <asp:ListItem Value="07.gif">用户头像07</asp:ListItem>
                        <asp:ListItem Value="08.gif">用户头像08</asp:ListItem>
                        <asp:ListItem Value="09.gif">用户头像09</asp:ListItem>
                        <asp:ListItem Value="10.gif">用户头像10</asp:ListItem>
                        <asp:ListItem Value="11.gif">用户头像11</asp:ListItem>
                        <asp:ListItem Value="12.gif">用户头像12</asp:ListItem>
                        <asp:ListItem Value="13.gif">用户头像13</asp:ListItem>
                        <asp:ListItem Value="14.gif">用户头像14</asp:ListItem>
                        <asp:ListItem Value="15.gif">用户头像15</asp:ListItem>
                        <asp:ListItem Value="16.gif">用户头像16</asp:ListItem>
                        <asp:ListItem Value="17.gif">用户头像17</asp:ListItem>
                        <asp:ListItem Value="18.gif">用户头像18</asp:ListItem>
                        <asp:ListItem Value="19.gif">用户头像19</asp:ListItem>
                        <asp:ListItem Value="20.gif">用户头像20</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
