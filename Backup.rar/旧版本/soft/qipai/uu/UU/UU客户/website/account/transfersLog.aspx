<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transfersLog.aspx.cs" Inherits="EUGameSite.Account.transfersLog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 167px;
        }
        .style2
        {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div style=" width:500px; height:30px;margin-left: auto;margin-right: auto;  text-align:center"><table style="width:100%;"><tr>
         <td align="right" class="style1">筛选条件：</td><td align="left" class="style2">
         <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="126px">
             <asp:ListItem>查看转出记录</asp:ListItem>
             <asp:ListItem>查看转入记录</asp:ListItem>
         </asp:DropDownList>
         </td><td align="left">
             <asp:Button ID="btnssearch" runat="server" onclick="btnssearch_Click" 
                 Text="搜索" />
         </td></tr></table>
      </div>
    <div align=center>
    
        <asp:GridView ID="GV" runat="server" AllowPaging="True" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="1" EnableModelValidation="True" ForeColor="Black" GridLines="None" 
            PageSize="50" Width="500px" OnPageIndexChanging="GV_PageIndexChanging" >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
     
    </div>
    </form>
</body>
</html>
