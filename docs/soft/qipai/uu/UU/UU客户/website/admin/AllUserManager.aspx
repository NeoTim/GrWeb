<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllUserManager.aspx.cs" Inherits="EUGameSite.Admin.AllUserManager" %>

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
    
    
  
    
  
   <div>
            
   <div style=" width:800px; height:22px;margin-left: auto;margin-right: auto; background-color:#3366FF; text-align:center">
       管理员组信息</div>

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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="K2046_Button" Text="修改" />
            </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="Button3" runat="server" Text="删除" CssClass="K2046_Button" onclick="Button3_Click" />
            </td>
        </tr>
    </table>
  
    
  
    </form>
    </body>
</html>
