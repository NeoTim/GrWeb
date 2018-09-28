<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tuiguang.aspx.cs" Inherits="EUGameSite.Admin.Tuiguang" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
    
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
        .style7
        {
            width: 60px;
        }
        #form1
        {
            height: 558px;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">推广管理 》》推广管理 </div>
        <hr />
        <div >
       </div>
    </div>
    
    
  
    
  
    <table style="width:700px; height: 13px;">
        <tr style=" height:22px";>
            <td class="style3">
                &nbsp;</td>
            <td align="right" class="style2">
                <asp:TextBox ID="tbxname" runat="server" Width="143px" Height="19px">请输入账号</asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnsearch" runat="server" Text="搜索" onclick="btnsearch_Click" />
            </td>
        </tr>
        </table>
   <div>
            
   <div style=" width:800px; height:22px;margin-left: auto;margin-right: auto;  background-color:#3366FF; text-align:center">注册会员管理</div>

     <div style=" width:800px; height:380px;margin-left: auto;margin-right: auto; text-align:center">
     
                <asp:GridView ID="GV" runat="server" Width="800px"  CellPadding="4" 
                    EnableModelValidation="True" ForeColor="#333333"  GridLines="None" 
                    AllowPaging="True" OnPageIndexChanging="GV_PageIndexChanging" 
>
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                     <Columns>
  
                         <asp:TemplateField HeaderText="选择框">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelected" Checked="False" Visible="True" GroupName="chk" runat="server">
                                    </asp:CheckBox></ItemTemplate>
                            </asp:TemplateField>
                        
                    </Columns>
                        
                  
                </asp:GridView></div>
       
      </div>
    
    <table style="width: 800px;">
        <tr>
            <td align="right">
                &nbsp;
                <asp:Button ID="btnxg" runat="server" onclick="Button1_Click" CssClass="K2046_Button" Text="修改" 
                    Width="57px" style="margin-bottom: 0px" />
            </td>
            <td  width="60px" align="right">
                <asp:Button ID="btnlookxiaxian" runat="server" 
                    onclick="btnlookxiaxian_Click" Text="查看下线" CssClass="K2046_Button" Width="59px" />
            </td>
            <td align="right"width="60px" >
             
                <asp:Button ID="Button6" runat="server" onclick="Button1_Click" 
                    CssClass="K2046_Button" Text="游戏记录" 
                    Width="69px" />
            </td>
            <td width="60px" align="right">
               
                <asp:Button ID="Button5" runat="server" onclick="Button1_Click" CssClass="K2046_Button" Text="查看抽水" 
                    Width="55px" />
            </td>
            <td width="60px" align="right">
               
                <asp:Button ID="Button4" runat="server" onclick="Button1_Click" CssClass="K2046_Button" Text="查看收益" 
                    Width="55px" />
            </td>
            <td  width="60px" align="right">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="K2046_Button" Text="每天抽水" 
                    Width="72px" />
            </td>
            <td  width="60px" align="right">
                <asp:Button ID="Button2" runat="server" Text="锁定" CssClass="K2046_Button" Width="58px" />
            </td>
            <td  width="60px" align="right">
                <asp:Button ID="Button3" runat="server" Text="删除" CssClass="K2046_Button" onclick="Button3_Click" 
                    Width="60px" />
            </td>
        </tr>
    </table>
  
    
  
    </form>
    </body>
</html>
