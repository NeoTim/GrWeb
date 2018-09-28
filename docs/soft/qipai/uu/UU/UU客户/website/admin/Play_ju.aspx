<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Play_ju.aspx.cs" Inherits="EUGameSite.Admin.Play_ju" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
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
            width: 122px;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">推广信息管理 》》查看下线游戏记录</div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    
  
    <table style="width:796px; height: 13px;">
        <tr style=" height:22px";>
            <td class="style3">
                <asp:TextBox ID="tbxname" runat="server" Width="143px" Height="19px">请输入账号</asp:TextBox>
            </td>
            <td align="left" class="style2">
                <asp:Button ID="btnsearch0" runat="server" Text="搜索" CssClass="K2046_Button" onclick="btnsearch0_Click" 
                     />
            </td>
            <td align="right" class="style2">
                开始时间：</td>
            <td align="left" class="style2">
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
            
   <div style=" width:1000px; height:22px;margin-left: auto;margin-right: auto;  background-color:#3366FF; text-align:center">
       玩家每局游戏记录</div>

     <div style=" width:1000px; height:380px;margin-left: auto;margin-right: auto; text-align:center">
     
                <asp:GridView ID="GV" runat="server" CellPadding="4"  BackColor="#3366FF"
                    EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
                    Width="1000px" PageSize="100" AllowPaging="True" 
                    onpageindexchanging="GV_PageIndexChanging" 
                    onselectedindexchanged="GV_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
     
                </div>
       
      </div>
    
    <table style="width: 800px;">
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td width="200px">
                &nbsp;
            </td>
            <td width="200px">
                &nbsp;</td>
            <td width="200px">
                &nbsp;&nbsp; </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
  
    
  
    </form>
    </body>
</html>
