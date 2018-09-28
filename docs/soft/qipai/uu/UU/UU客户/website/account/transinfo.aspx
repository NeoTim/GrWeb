<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transinfo.aspx.cs" Inherits="EUGameSite.Account.transinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	银行转账
</title>
<link href="../css/frame.css" type="text/css" rel="stylesheet" /><link href="../css/gameCon.css" type="text/css" rel="stylesheet" /><link href="../css/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function checkInput() {
        var oName = document.getElementById("txt_user");
        var oPass = document.getElementById("txt_bankpass");
        var oRePass = document.getElementById("txt_sum");




        if (oName.value == "") {
            alert("对方账户名称不能为空");
            oName.focus();
            return false;
        }

        if (oPass.value == "") {
            alert("银行密码不能为空");
            oPass.focus();
            return false;
        }


        if (oRePass.value == "") {
            alert("转账金额不能为空");
            oRePass.focus();
            return false;
        }

    }
    </script>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            text-align: center;
            color: #FF0000;
        }
        .style3
        {
            width: 91px;
            color: #FF0000;
        }
        .style4
        {
            color: #FF0000;
            width: 256px;
        }
        .style5
        {
            width: 256px;
        }
    </style>
</head>
<body style="background:#fff;">
    <form id="form1" runat="server">

    <table style="width:100%; height:54px;"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>

    <div class="style1">银行转账信息</div>
    <table style="width:800px;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style3">
                对方账号：</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="right" class="style3">
                转账金额：</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="right" class="style3">
                转账时间：</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="right" class="style3">
                转账状态：</td>
            <td>
                <asp:Label ID="Label4" runat="server" style="color: #FF0000" Text="成功"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="right" class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" style="color: #FF0000" Text="确认" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

