<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gamelog.aspx.cs" Inherits="EUGameSite.Admin.Gamelog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="StyleCss/Manage.css" rel="stylesheet" type="text/css" />
     <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
    <script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
    <style type="text/css">
        

        #show
        {
            width: 749px;
        }
        .style2
        {
            width: 254px;
        }
        .style3
        {
            width: 131px;
        }
        #date1
        {
            width: 110px;
        }
        .style4
        {
            font-size: large;
            color: #FF0000;
        }
        .style5
        {
            width: 217px;
        }
        .style6
        {
            width: 259px;
        }
        #date2
        {
            width: 122px;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">用户信息管理 》》玩家每局游戏记录</div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    <div align="center">
  
    <table style="width:850px; height: 13px;">
        <tr style=" height:22px";>
            <td class="style3">
                <asp:TextBox ID="tbxname" runat="server" Width="86px" Height="19px">账号</asp:TextBox>
            </td>
            <td align="left" class="style2">
                <asp:Button ID="btnsearch0" runat="server" Text="搜索" CssClass="K2046_Button" onclick="btnsearch0_Click" 
                     />
            </td>
             <td class="style3">
                <asp:TextBox ID="tbxID" runat="server" Width="86px" Height="19px">ID</asp:TextBox>
            </td>
            <td align="left" class="style5">
                <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="K2046_Button" onclick="btnsearch1_Click" 
                     />
            </td>
            <td align="right" class="style2">
                开始时间：</td>
            <td align="left" class="style6">
                <input id="date1" class="Wdate" type="text" onClick="WdatePicker()" runat="server"/></td>
            <td align="right" class="style2">
                结束时间：</td>
            <td align="left" class="style2">
                <input id="date2" class="Wdate" type="text" onClick="WdatePicker()" runat="server"/></td>
            <td>
                <asp:Button ID="btnsearch" runat="server" Text="搜索" CssClass="K2046_Button" 
                    onclick="btnsearch_Click"  />
            </td>
        </tr>
        </table>
   <div>
      
     <table cellpadding="0" cellspacing="0" border="0" class="Manage_Table3">
        <tr>
            <td class="Manage_Header">普通玩家每局游戏记录</td>
        </tr>
        
        <tr>
            <td>
                <asp:GridView ID="GV" runat="server" CellPadding="4"  BackColor="#3366FF"
                    EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
                    Width="1000px" PageSize="80" AllowPaging="True" 
                    onpageindexchanging="GV_PageIndexChanging" 
                    onselectedindexchanged="GV_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5555FF" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#5555FF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView></td>
        </tr> 
    </table>       


   
     
                
     
                </div>
       
 
    
    <div style="width:1000px; height:40px;margin-left: auto;margin-right: auto; text-align:center">
    <table style="width:1000px;height:40px;"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
        <td align="right"><span class="style4"><strong>输赢总数</strong></span>：</td>
        <td align="left"><asp:Label ID="lbltip" runat="server" Font-Size="Large" 
                ForeColor="Red"></asp:Label></td></tr></table>
    </div>
  
    
  </div>
    </form>
    </body>
</html>
