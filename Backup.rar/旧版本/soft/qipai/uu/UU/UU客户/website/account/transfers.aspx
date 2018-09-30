<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transfers.aspx.cs" Inherits="EUGameSite.Account.transfers" %>


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
</head>
<body style="background:#fff;">
    <form id="form1" runat="server">



    <div class="infoTiBg">银行转账</div>
    <table cellspacing="0" border="0" class="infoTable">
        <tr>
            <td width="160" align="right">对方账号：</td>
            <td><input name="txt_user"  id="txt_user" class="inputTxt" runat="server"/></td>
        </tr>
        <tr>
            <td align="right">银行密码：</td>
            <td><input name="txt_bankpass" type="password" id="txt_bankpass" class="inputTxt" runat="server"/></td>
        </tr>
        <tr>
            <td align="right">转账金额：</td>
            <td><input name="txt_sum"  id="txt_sum" class="inputTxt" runat="server"/></td>
        </tr>
      
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnQD" runat="server" Text="确定" 
                OnClientClick="return checkInput()" onclick="btnQD_Click" />
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>

