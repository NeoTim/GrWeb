<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllChoushui.aspx.cs" Inherits="EUGameSite.Admin.AllChoushui" %>


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
            width: 108px;
        }
        .style11
        {
            width: 219px;
            height: 84px;
        }
        .style12
        {
            height: 84px;
        }
        .style14
        {
            width: 224px;
            height: 84px;
        }
        .style15
        {
            width: 224px;
            height: 31px;
        }
        .style16
        {
            width: 219px;
            height: 31px;
        }
        .style17
        {
            height: 31px;
        }
        #date2
        {
            width: 107px;
        }
        .style19
        {
            width: 4px;
        }
        .style20
        {
            width: 71px;
        }
        .style21
        {
            width: 68px;
        }
        .style22
        {
            width: 115px;
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
    <div class="Body_Title">财务信息管理 》》所有房间抽水查询</div>
        <hr />
        <div >
       </div>
    </div>
    
 <div align="center">   
  <table style="width:753px; height: 67px;">
        <tr style=" height:22px";>
            <td class="style19">
                &nbsp;</td>
            <td align="left" class="style21">
                玩家类型：</td>
                <td align="left" class="style20">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="80px">
                    <asp:ListItem>所有玩家</asp:ListItem>
                        <asp:ListItem>普通玩家</asp:ListItem>
                        <asp:ListItem>机器人</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td align="right" class="style2">
                开始时间：</td>
            <td align="left" class="style22">
                <input id="date1" class="Wdate" type="text" onClick="WdatePicker()" runat="server"/></td>
            <td align="right" class="style23">
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
            
   <div style=" width:753px; height:22px;margin-left: auto;margin-right: auto;  background-color:#3366FF; text-align:center">
       <asp:Label ID="lbltip" runat="server" ></asp:Label></div>

     <div style=" width:753px; height:380px;margin-left: auto;margin-right: auto; text-align:center">
     
                
     
                <table style="width:100%;height:100px">
                    <tr>
                        <td class="style15">
                            赢得游戏币</td>
                        <td class="style16">
                            抽水比例</td>
                        <td class="style17">
                            抽水总额</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red"></asp:Label>
                            </td>
                        <td class="style11">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red"></asp:Label>
                            </td>
                        <td class="style12">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red"></asp:Label>
                            </td>
                    </tr>
                    </table>
     
                
     
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
  
    <div>
  
    </form>
    </body>
</html>
