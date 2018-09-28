<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Today_user.aspx.cs" Inherits="EUGameSite.Admin.Today_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        

        #show
        {
            width: 749px;
        }
        .style1
        {
            height: 22px;
        }
        .style2
        {
            width: 254px;
        }
        .style3
        {
            width: 131px;
        }
        .style4
        {
            width: 131px;
            height: 9px;
        }
        .style5
        {
            width: 254px;
            height: 9px;
        }
        .style6
        {
            height: 9px;
        }
        </style>
</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">用户信息管理 》》所有用户管理</div>
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
                    onrowediting="GV_RowEditing">
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
                <asp:Label ID="lblTip" runat="server"></asp:Label>
            </td>
            <td width="200px">
                &nbsp;&nbsp; </td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="锁定" />
            </td>
            <td align="center">
                <asp:Button ID="Button3" runat="server" Text="删除" onclick="Button3_Click" />
            </td>
        </tr>
    </table>
  
    
  
    </form>
    </body>
</html>
