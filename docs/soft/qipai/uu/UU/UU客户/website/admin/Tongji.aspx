<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tongji.aspx.cs" Inherits="EUGameSite.Admin.Tongji" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            color: #CC0000;
        }
        .style4
        {
            width: 328px;
            font-size: x-large;
            font-weight: 700;
        }
        .style5
        {
            width: 329px;
            font-size: x-large;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
       <div style=" width:800px; height:22px;margin-left: auto;margin-right: auto;  background-color:#3366FF; text-align:center">
       当前游戏币统计信息</div>
       <div align="center">
    <table style="width:500px;">
      
           <tr>
            <td class="style4">
                <span class="style2">普通玩家当前游戏币总数</span><span class="style3">：</span></td>
            <td>
                <asp:Label ID="lblTip1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
           <tr>
            <td class="style4">
                <span class="style2">机器人当前游戏币总数</span><span class="style3">：</span></td>
            <td>
                <asp:Label ID="lblTip2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
          <tr>
            <td class="style4">
                <span class="style2">所有玩家当前游戏币总数</span><span class="style3">：</span></td>
            <td>
                <asp:Label ID="lblTip" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        
    </table>
    </div>
     <div style=" width:800px; height:22px;margin-left: auto;margin-right: auto;  background-color:#3366FF; text-align:center">
       游戏币统计信息</div>
    <div align="center">
    <table style="width:500px;">
      
           <tr>
            <td class="style5">
                <span class="style2">普通玩家银行游戏币总数</span><span class="style3">：</span></td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
           <tr>
            <td class="style5">
                <span class="style2">机器人银行游戏币总数</span><span class="style3">：</span></td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
          <tr>
            <td class="style5">
                <span class="style2">所有玩家银行游戏币总数</span><span class="style3">：</span></td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        
    </table>
    </div>
    </form>
    </body>
</html>
