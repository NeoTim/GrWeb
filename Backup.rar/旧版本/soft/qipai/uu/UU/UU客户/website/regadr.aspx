<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regadr.aspx.cs" Inherits="GameWeb.regadr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            color: #0000CC;
            font-size: x-large;
        }
        .style3
        {
            width: 95px;
        }
        .style5
        {
            width: 95px;
            color: #0000CC;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div align=center>
    &nbsp;&nbsp;&nbsp;&nbsp; <span class="style2"><strong>注册网址</strong></span></div>
    <div align=center>
    <table style="width:700px;"><tr><td class="style3">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr>
        <td class="style5"><strong>注册URL：</strong></td><td colspan="2" align="left">
        <asp:Label ID="lbltip" runat="server" Font-Bold="True" Font-Size="X-Large" 
            style="color: #0000CC; font-size: large;"></asp:Label>
        </td></tr><tr><td class="style3">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>
    <div class="style1">


        注意：您的下线玩家必须用上面的地址注册，否则下线用户无效!请牢记！</div>
    
    </div>
    </form>
</body>
</html>
