<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productinfo.aspx.cs" Inherits="EUGameSite.Productinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keyWords" content="567,棋牌游戏,牛牛,斗地主,温州麻将,百变梭哈,两张" />
<meta name="Description" content="温州本土棋牌游戏，游戏种类繁多，规则更加符合本土玩家的游戏习惯" />
<meta name="Author" content="上海众启网络科技有限公司" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 264px;
        }
        .style2
        {
        }
        .style3
        {
            width: 238px;
        }
        .style4
        {
            width: 238px;
            height: 23px;
        }
        .style5
        {
            width: 264px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            color: #FF0000;
        }
    </style>
     <script type="text/javascript">
         function checkInput() {
             var tbxidnum = document.getElementById("tbxidnum");
             var tbxadr = document.getElementById("tbxadr");
             var tbxmob = document.getElementById("tbxmob");
             var tbxzip = document.getElementById("tbxzip");
             if (tbxadr.value == "") {
                 alert("详细地址不能为空");
                 tbxadr.focus();
                 return false;
             }

             if (tbxmob.value == "") {
                 alert("手机号码不能为空");
                 tbxmob.focus();
                 return false;
             }

             if (tbxzip.value == "") {
                 alert("邮政编码不能为空");
                 tbxzip.focus();
                 return false;
             }



             return true;
         }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <table style="width:600px;">
            <tr>
                <td colspan="3">
                    兑换商品信息</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    商品名:</td>
                <td align="left" class="style1">
                    <asp:TextBox ID="tbxname" runat="server" Width="167px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    价格:</td>
                <td align="left" class="style1">
                    <asp:TextBox ID="tbxprice" runat="server" Width="167px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    兑换人账号:</td>
                <td align="left" class="style1">
                    <asp:TextBox ID="tbxusername" runat="server" Width="167px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    身份证号码:</td>
                <td align="left" class="style1">
                    <asp:TextBox ID="tbxidnum" runat="server" Width="167px"></asp:TextBox>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    详细地址:</td>
                <td align="left" class="style5">
                    <asp:TextBox ID="tbxadr" runat="server" Width="166px"></asp:TextBox>
                    <span class="style7">*</span></td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    手机号码:</td>
                <td align="left" class="style5">
                    <asp:TextBox ID="tbxmob" runat="server" Width="166px"></asp:TextBox>
                    <span class="style7">*</span></td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    邮政编码:</td>
                <td align="left" class="style1">
                    <asp:TextBox ID="tbxzip" runat="server" Width="165px"></asp:TextBox>
                    <span class="style7">*</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="3">
                    <asp:Button ID="btnTJ" runat="server" Text="提交信息" 
                        OnClientClick="return checkInput()" onclick="btnTJ_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
