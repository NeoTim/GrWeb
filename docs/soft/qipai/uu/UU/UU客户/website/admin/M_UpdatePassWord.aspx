<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="M_UpdatePassWord.aspx.cs" Inherits="EUGameSite.Admin.M_UpdatePassWord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../JavaScript/Jquery.js"></script>
    <script type="text/javascript" src="../JavaScript/Admin.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">系统信息管理 》》修改管理密码</div>
        <hr />
        <table cellspacing="1" cellpadding="2">
                <tr>
                    <td style="width:80px; text-align:right; font-weight:bolder;">
                        原密码：</td>
                    <td width="650px;">
                        <input id="txtOldPass" type="password"   style="width:200px;" runat="server" maxlength="20"/><span class="WarnMes">*</span>原密码，不能为空！</td>
                </tr>
                <tr>
                    <td style="width:80px; text-align:right; font-weight:bolder;">
                        新密码：</td>
                    <td>
                        <input id="txtNewPass" type="password"   style="width:200px;" runat="server" maxlength="20"/><span class="WarnMes">*</span>新密码，不能为空，20个字符以内。</td>
                </tr>
                <tr>
                    <td style="width:80px; text-align:right; font-weight:bolder;">
                        确认密码：</td>
                    <td>
                        <input id="txtCheckPass" type="password"   style="width:200px;" runat="server" maxlength="20"/><span class="WarnMes">*</span>确认新密码，不能为空，确保驶入一致！</td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="BtnUpdatePass" runat="server" Text=" 更新密码  " 
                            onclick="BtnSave_Click" />
                        </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
