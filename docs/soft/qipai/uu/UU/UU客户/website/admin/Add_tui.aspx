<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_tui.aspx.cs" Inherits="EUGameSite.Admin.Add_tui" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="StyleCss/Manage.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        

        #show
        {
            width: 749px;
        }
        .style1
        {
            width: 333px;
        }
        .style2
        {
            width: 254px;
            font-size: medium;
        }
        .style3
        {
            color: #FF0000;
        }
        </style>
        <script type="text/javascript">
            function checkInput() {
                var tbxname = document.getElementById("tbxname");
                var tbxpwd = document.getElementById("tbxpwd");
                var tbxpwd1 = document.getElementById("tbxpwd1");
                var tbxrealname = document.getElementById("tbxrealname");
                var tbxqq = document.getElementById("tbxqq");
                var tbxemail = document.getElementById("tbxemail");
                var tbxdailiid = document.getElementById("tbxdailiid");
                var tbxdomain = document.getElementById("tbxdomain");
                var tbxpercent = document.getElementById("tbxpercent");



                if (tbxname.value == "") {
                    alert("用户名称不能为空");
                    tbxname.focus();
                    return false;
                }

                if (tbxpwd.value == "") {
                    alert("账户密码不能为空");
                    tbxpwd.focus();
                    return false;
                }
                if (tbxpwd.value.length < 6) {
                    alert("登录密码长度应不小于6位");
                    tbxpwd.focus();
                    return false;
                }
                if (tbxpwd.value != tbxpwd1.value) {
                    alert("两次输入的密码不一致");
                    return false;
                }
                if (tbxrealname.value == "") {
                    alert("真实姓名不能为空");
                    tbxrealname.focus();
                    return false;
                }

                if (tbxqq.value == "") {
                    alert("QQ不能为空");
                    tbxqq.focus();
                    return false;
                }
                if (tbxemail.value == "") {
                    alert("Emai不能为空");
                    tbxemail.focus();
                    return false;
                }
                if (tbxdailiid.value == "") {
                    alert("代理号不能为空");
                    tbxdailiid.focus();
                    return false;
                }
                if (tbxdailiid.value != "") {
                    if (tbxdailiid.value.length < 6) {
                        alert("代理号长度应不小于6位");
                        tbxdailiid.focus();
                        return false;
                    } 
                }
                if (tbxdomain.value == "") {
                    alert("代理号不能为空");
                    tbxdomain.focus();
                    return false;
                }
                if (tbxpercent.value == "") {
                    alert("抽水比例不能为空");
                    tbxpercent.focus();
                    return false;
                }

                

                return true;
            }
    </script>

</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">推广管理 》》添加推广员</div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    
  
    
  <div align="center">
    
    
  
    
  
    <table style="width:800px; height: 273px;border:1px solid Black">
         <tr>
            <td align="center" bgcolor="#3366FF" colspan="3" height="22px">
                添加推广员</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                用户名：</td>
            <td class="style1">
                <asp:TextBox ID="tbxname" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                密 码：</td>
            <td class="style1">
                <asp:TextBox ID="tbxpwd" runat="server" Width="205px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                再次输入密码：</td>
            <td class="style1">
                <asp:TextBox ID="tbxpwd1" runat="server" Width="205px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
     
        <tr>
            <td align="right" class="style2">
                QQ:</td>
            <td class="style1">
                <asp:TextBox ID="tbxqq" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Email</td>
            <td class="style1">
                <asp:TextBox ID="tbxemail" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
      
      
        <tr>
            <td align="right" class="style2">
                抽水比例：</td>
            <td class="style1">
                <asp:TextBox ID="tbxpercent" runat="server" Width="205px"></asp:TextBox>
                <span class="style3">(填写范围0-70)</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="btnadd" runat="server" Text="添加" onclick="btnadd_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    
  
    </div>
  
    
  
    
    
  
    
  
    </form>
    </body>
</html>
