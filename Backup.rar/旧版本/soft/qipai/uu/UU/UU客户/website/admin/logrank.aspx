<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logrank.aspx.cs" Inherits="EUGameSite.Admin.logrank" %>



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
        }
        #date1
        {
            width: 86px;
        }
        #date2
        {
            width: 123px;
        }
        .style19
        {
            width: 195px;
        }
        .style21
        {
            width: 68px;
        }
        .style23
        {
            width: 72px;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">财务信息管理 》》赢得游戏币排行</div>
        <hr />
        <div >
       </div>
    </div>
    
  <div align="center">  
  <table style="width:753px; height: 67px;">
        <tr style=" height:22px";>
            <td class="style19">
                房间名:<asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="SvrName" 
                    DataValueField="SvrName" Height="22px" Width="123px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMLConnectionString2 %>" 
                    SelectCommand="SELECT distinct [TML_Server].[SvrName] FROM [TML_Record],[TML_Server] where [TML_Record].[ServerPort]=[TML_Server].[ServerPort] "></asp:SqlDataSource>
            </td>
            <td align="left" class="style21">
                &nbsp;</td>
            <td align="right" class="style23">
                排行日期：</td>
            <td align="left" class="style2">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnsearch" runat="server" Text="搜索" CssClass="K2046_Button" 
                    onclick="btnsearch_Click"  />
            </td>
        </tr>
        </table>
    
  
    
   <div>
            
   <div style=" width:753px; height:22px;margin-left: auto;margin-right: auto;  background-color:#3366FF; text-align:center">
       <asp:Label ID="lbltip" runat="server" ></asp:Label></div>

     <div style=" width:753px; height:380px;margin-left: auto;margin-right: auto; text-align:center">
     
                
     
                <asp:GridView ID="GV" runat="server" Width="741px">
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
  
    
  </div>
    </form>
    </body>
</html>
