<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Online.aspx.cs" Inherits="EUGameSite.Admin.Online" %>
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
            width: 271px;
        }
        .style2
        {
            width: 109px;
        }
        .style3
        {
            height: 26px;
        }
        .K2046_Button
        {
            height: 21px;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">用户信息管理 》》在线统计</div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    
  
    
    
    <div align="center">
    
  
    
  
    <table style="width:800px; height: 63px;">
        <tr>
            <td align="center" colspan="3" bgcolor="#3366FF" class="style3" headers="22px">
                在线人数统计</td>
        </tr>
        <tr>
            <td class="style1">
                在线总人数：</td>
            <td class="style2" align="center">
                <asp:Label ID="lblnum" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td align="left">
                人</td>
        </tr>
         <tr>
            <td class="style1">
               <asp:Label ID="lblroom" runat="server"> </asp:Label> 在线人数：</td>
            <td class="style2" align="center">
                <asp:Label ID="lblnum1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td align="left">
                人</td>
        </tr>
    </table>
    
    
  
    
  
    
    
    
    
  
    
  <table style="width:753px; height: 72px;">
        <tr style=" height:22px";>
            <td >
                房间名:<asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="SvrName" 
                    DataValueField="SvrName" Height="22px" Width="123px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMLConnectionString2 %>" 
                    SelectCommand="SELECT distinct [TML_Server].[SvrName] FROM [TML_Record],[TML_Server] where [TML_Record].[ServerPort]=[TML_Server].[ServerPort] "></asp:SqlDataSource>
            </td><td>
                <asp:Button ID="btnsearch" runat="server" Text="搜索" CssClass="K2046_Button" 
                    onclick="btnsearch_Click"  />
            </td></tr></table>
     <div style=" width:800px; height:380px;margin-left: auto;margin-right: auto; text-align:center">
     
             <asp:GridView ID="GV" runat="server" CellPadding="4" 
                 EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
                 Width="800px" onpageindexchanging="GV_PageIndexChanging" PageSize="30"> 
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
    
  
    
  
    
    
    
    
  
    
  
    </form>
    </body>
</html>
