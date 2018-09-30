<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankPwdmodify.aspx.cs" Inherits="EUGameSite.Account.BankPwdmodify" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	银行密码修改
</title><link href="../css/frame.css" type="text/css" rel="stylesheet" /><link href="../css/gameCon.css" type="text/css" rel="stylesheet" /><link href="../css/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function checkInput() {
        var txt_loginPass1 = document.getElementById("txt_loginPass1");
        var txt_loginPass2 = document.getElementById("txt_loginPass2");
        var txt_reloginPass2 = document.getElementById("txt_reloginPass2");


        if (txt_loginPass1.value == "") {
            alert("原始密码不能为空");
            txt_loginPass1.focus();
            return false;
        }

        if (txt_loginPass2.value == "") {
            alert("新密码不能为空");
            txt_loginPass2.focus();
            return false;
        }

        if (txt_loginPass2.value != txt_reloginPass2.value) {
            alert("两次输入的密码不一致");
            return false;
        }

        return true;
    }
    </script>
</head>
<body style="background:#fff;">
    <form id="form1" runat="server">



    <div class="infoTiBg">修改银行密码</div>
    <table cellspacing="0" border="0" class="infoTable">
        <tr>
            <td width="160" align="right">原始密码：</td>
            <td><input name="txt_loginPass1" type="password" id="txt_loginPass1" class="inputTxt" runat="server" /></td>
        </tr>
        <tr>
            <td align="right">新密码：</td>
            <td><input name="txt_loginPass2" type="password" id="txt_loginPass2" class="inputTxt" runat="server" /></td>
        </tr>
        <tr>
            <td align="right">确认密码：</td>
            <td><input name="txt_reloginPass2" type="password" id="txt_reloginPass2" class="inputTxt" runat="server" /></td> 
        </tr>
      
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnMod" runat="server" Text="修改" onclick="btnMod_Click" 
                OnClientClick="return checkInput()" style="height: 21px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

