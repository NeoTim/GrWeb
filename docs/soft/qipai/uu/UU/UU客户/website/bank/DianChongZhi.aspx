<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DianChongZhi.aspx.cs" Inherits="EUGameSite.Bank.DianChongZhi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	点卡充值
</title><link href="../css/frame.css" type="text/css" rel="stylesheet" />
<link href="../css/gameCon.css" type="text/css" rel="stylesheet" />
<link href="../css/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function checkInput() {
        var txt_loginPass1 = document.getElementById("txt_loginPass1");
        var txt_loginPass2 = document.getElementById("txt_loginPass2");
        var txt_reloginPass2 = document.getElementById("txt_reloginPass2");


        if (txt_loginPass1.value == "") {
            alert("点卡卡号不能为空");
            txt_loginPass1.focus();
            return false;
        }

        if (txt_loginPass2.value == "") {
            alert("点卡密码不能为空");
            txt_loginPass2.focus();
            return false;
        }
        if (txt_reloginPass2.value == "") {
            alert("充值账号不能为空");
            txt_reloginPass2.focus();
            return false;
        }

        return true;
    }
    </script>
</head>
<body style="background:#fff;">
    <form id="form1" runat="server">



    <div class="infoTiBg">点卡充值</div>
    <table cellspacing="0" border="0" class="infoTable">
        <tr>
            <td width="160" align="right">点卡卡号：</td>
            <td><input name="txt_loginPass1" id="txt_loginPass1" class="inputTxt" runat="server" /></td>
        </tr>
        <tr>
            <td align="right">点卡密码：</td>
            <td><input name="txt_loginPass2" type="password" id="txt_loginPass2" class="inputTxt" runat="server" /></td>
        </tr>
        <tr>
            <td align="right">充值账号：</td>
            <td><input name="txt_reloginPass2"  id="txt_reloginPass2" class="inputTxt" runat="server" /></td> 
        </tr>
      
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnMod" runat="server" Text="充值" onclick="btnMod_Click" 
                OnClientClick="return checkInput()" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
