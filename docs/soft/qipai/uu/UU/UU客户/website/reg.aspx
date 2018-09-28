<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="EUGameSite.reg" %>
<%@ Register Src="~/uc/HeadSelect.ascx" TagName="hs" TagPrefix="UC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	UU游戏玩家注册
</title>
<script language="javascript" type="text/javascript">
    function getimgcode() {
        var getimagecode = document.getElementById("getcode");
        getimagecode.src = "VerifyCode.aspx";
    } 
</script> 


     <script type="text/javascript">
        function checkInput() {
            var oName = document.getElementById("txt_username");
            var oPass = document.getElementById("txt_pwd");
            var oRePass = document.getElementById("txt_pwd1");
            var oBankPwd = document.getElementById("txt_bankpwd");
            var oReBankPwd = document.getElementById("txt_bankpwd1");
            var oNicheng = document.getElementById("txt_nicheng");
		    var oRealName = document.getElementById("txt_realname");
            var oIDN= document.getElementById("txt_idnum");
            var oEmail= document.getElementById("txt_email");
            
            if (oName.value == "") {
                alert("账户名称不能为空");
                oName.focus();
                return false;
            }
            if (oName.value.length > 14) {
                alert("用户名长度不能大于14位");
                oName.focus();
                return false;
            }
            if (oPass.value == "") {
                alert("账户密码不能为空");
                oPass.focus();
                return false;
            }
            if (oPass.value.length < 6) {
                alert("登录密码长度应不小于6位");
                oPass.focus();
                return false;
            }
            if (oRePass.value != oPass.value) {
                alert("两次输入的密码不一致");
                return false;
            }
            if (oBankPwd.value == "") {
                alert("银行密码不能为空");
                oBankPwd.focus();
                return false;
            }
            if (oBankPwd.value.length < 6) {
                alert("银行密码长度应不小于6位");
                oPass.focus();
                return false;
            }
            if (oReBankPwd.value != oBankPwd.value) {
                alert("两次输入的密码不一致");
                return false;
            }
            if (oNicheng.value == "") {
                alert("用户昵称不能为空");
                oNicheng.focus();
                return false;
            }
      
        
        
            return true;
        }
    </script>
<link href="css/frame.css" type="text/css" rel="stylesheet" /><link href="css/gameCon.css" type="text/css" rel="stylesheet" /><link href="css/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style2
        {
            width: 176px;
        }
        .style3
        {
            width: 203px;
        }
        .style4
        {
            color: #FF0000;
        }
        #head
        {
            width: 155px;
            height: 137px;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
    <form id="form1" runat="server">

<script type="text/javascript">
//<![CDATA[
    var theForm = document.forms['form1'];
    if (!theForm) {
        theForm = document.form1;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
//]]>
</script>


<div>

	
</div>
    <div id="main">
	    <div class="login_top"><div class="backToIndex"><a href="index.aspx">返回首页</a></div></div>
        <div class="login_box">
    	    <div class="login_left">
        	<div class="login_right">
            <div class="reg_main">
                <div class="regTip">提示：如果你已经注册，可以直接
                <div class="lgbtn_bg"><a href="Login.aspx">登录</a></div></div>
                <div class="regTitle"><span class="boldFont">用户注册</span>　<span style="color:Red">(18岁以上人群使用产品)</span></div>
                <div class="regCon">
                    <span style="font-weight:bold">注册信息</span>　（以下带 <span style="color:Red">*</span> 号的为必填内容）
                    </div>
                    <div class="regCon">
                        <table style="width: 610px;">
                            <tr>
                                <td align="right" class="style2">
                                    账户名称:</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_username" runat="server" Width="188px" Height="19px"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">验证用户名</asp:LinkButton>
                                    <asp:Label ID="lblTip" runat="server"></asp:Label>
                                    <br />
                                    *（由字母a～z(不区分大小写)、数字0～9、汉字组成。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    账户密码:</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_pwd" runat="server" Width="188px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    *（二十个字符以内。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    确认账户密码:</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_pwd1" runat="server" Width="188px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    （重复输入一次，以确认正确。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    银行密码:</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_bankpwd" runat="server" Width="188px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    *（二十个字符以内。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    确认银行密码</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_bankpwd1" runat="server" Width="188px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    （重复输入一次，以确认正确。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    账户昵称:</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_nicheng" runat="server" Width="188px"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    *（由字母a～z(不区分大小写)、数字0～9组成。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    推荐人ID:</td>
                                <td class="style3">
                                    <asp:TextBox ID="tbxTuijian" runat="server" Width="188px" Enabled="False"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    （填写推荐人的用户编号,必须为整数。）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    性别:</td>
                                <td class="style3">
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style4">&nbsp;
                                    </td>
                            </tr>
                             <tr>
                                <td align="right" class="style2">
                                    选择头像:</td>
                                <td class="style3">
                                  <iframe id="head" style="width: 125px;height:140px" src="uc/Selecthead.aspx" scrolling="no" frameborder="0"></iframe>
                                </td>
                                <td class="style4">&nbsp;
                                    </td>
                            </tr>
                         
                            <tr>
                                <td align="right" class="style2">
                                    真实姓名：</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_realname" runat="server" Width="188px"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    （实名制认证，填写真实姓名）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    身份证号：</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_idnum" runat="server" Width="188px"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    （身份证号码，不少于18位）</td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    常用邮箱：</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_email" runat="server" Width="188px"></asp:TextBox>
                                </td>
                                <td>&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    个性签名：</td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_qq" runat="server" Width="188px"></asp:TextBox>
                                </td>
                                <td>&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td align="right" class="style2">
                                    验证码：</td>
                                <td class="style3">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Image ID="getcode" src="VerifyCode.aspx" runat="server" /> <A href="javascript:getimgcode()">刷新验证码</A>
</td><td>&nbsp;
                                    </td>
                            </tr>
                        </table>
                </div>
                <div class="regArgBtn placeCenter">
                    <asp:Button ID="btnfinish" runat="server" 
                        onclick="btnfinish_Click" OnClientClick="return checkInput()" Text="完成注册" 
                        Width="84px" style="height: 21px" />
&nbsp;
                    <asp:Button ID="btnret" runat="server" Text="返回首页" Width="73px" 
                        onclick="btnret_Click" />
                </div>
            </div>
            </div>
            </div>
        </div>
    </div>
    </form>
    
</body>
</html>
