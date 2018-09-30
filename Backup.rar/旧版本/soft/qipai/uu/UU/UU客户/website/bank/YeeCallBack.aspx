<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeeCallBack.aspx.cs" Inherits="GameWeb.bank.YeeCallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 190px;
        }
        .style2
        {
            font-size: x-large;
            color: #FF0000;
        }
        .style3
        {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <table style="width:400px;">
            <tr>
                <td class="style2" colspan="3">
                    <strong>充值信息</strong></td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    订单号：</td>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    充值金额：</td>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    交易流水号：</td>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td class="style1" align="left">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="height: 21px" Text="确定" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
