<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminManage.aspx.cs" Inherits="EUGameSite.Admin.AdminManage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
        function checkInput() {
            var oName = document.getElementById("tbxname");
            var oPass = document.getElementById("tbxpwd");
            var oRePass = document.getElementById("tbxrepwd");
            if (oName.value == "") {
                alert("账户名称不能为空");
                oName.focus();
                return false;
            }

            if (oPass.value == "") {
                alert("账户密码不能为空");
                oPass.focus();
                return false;
            }
          
            if (oRePass.value != oPass.value) {
                alert("两次输入的密码不一致");
                return false;
            }
            
          

            return true;
        }
    </script>
    <link href="../Style/Manage.css" rel="stylesheet" type="text/css" />
     <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
    
    <style type="text/css">
        #show
        {
            width: 749px;
        }
        .style1
        {
            width: 116px;
        }
        </style>

</head>
<body>
    <form  id="form1" runat="server">
     <div class="div_All">
    <div class="Body_Title">用户信息管理 》》管理员管理</div>
       
       <div align="center"> 
    <table cellpadding="0" cellspacing="0" border="0" style=" width:650px" >
        <tr>
            <td class="Manage_Header">管理员管理</td>
        </tr>
        
        <tr>
            <td >
                <asp:GridView ID="GV" runat="server" 
                    BorderStyle="Solid" CellPadding="3" Width="100%"  
                   
                    CssClass="GridView_Table" OnRowCommand="MyGridView_RowCommand" 
                    onrowcreated="GV_RowCreated" onrowdeleting="GV_RowDeleting" PageSize="6" 
                    >
                    <FooterStyle CssClass="GridView_Footer" />
                    <Columns>
                                  
                        <asp:ButtonField CommandName="EditCate" HeaderText="编辑" Text="编辑" />
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />                      
                    </Columns>
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <PagerStyle CssClass="GridView_Pager" />
                    <HeaderStyle Font-Bold="True" CssClass="GridView_Header" />
                    <AlternatingRowStyle CssClass="GridView_AlternatingRow" />
                    <RowStyle CssClass="GridView_Row" />
                    <PagerSettings Mode="NumericFirstLast" Visible="False" />
                </asp:GridView></td>
        </tr> 
    </table>
    <table cellpadding="0" cellspacing="0" border="0" style="width:650px" >
        <tr>
            <td class="Manage_Header" colspan="4">管理员添加</td>
        </tr>
        
        <tr>
            <td width="200"></td><td class="style1">管理员账号：</td><td>
            <asp:TextBox ID="tbxname" runat="server" Width="185px"></asp:TextBox>
            </td><td></td>
        </tr> 
      
          <tr>
            <td width="200"></td><td class="style1">管理员组：</td><td>
              <asp:DropDownList ID="DropDownList2" runat="server" 
                  DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                  Height="19px" Width="184px">
              </asp:DropDownList>
              </td><td> </td>
        </tr>
        <tr>
            <td></td><td class="style1">管理员密码：</td><td>
            <asp:TextBox ID="tbxpwd" runat="server" Width="185px" TextMode="Password"></asp:TextBox>
            </td><td></td>
        </tr> 
        <tr>
            <td></td><td class="style1">确认密码：</td><td>
            <asp:TextBox ID="tbxrepwd" runat="server" Width="184px" TextMode="Password"></asp:TextBox>
            </td><td></td>
        </tr> 
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="确认添加" Width="73px" 
                    OnClientClick="return checkInput()" onclick="Button1_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMLConnectionString2 %>" 
                    SelectCommand="SELECT [name] FROM [Permission]"></asp:SqlDataSource>
            </td><td></td>
        </tr> 
        
    </table>
    </div>
    </div>
  
   
     
    

     
       <div>
                
    
   
         </div>
    
  
        <hr />
       
    
    </form>
    </body>
</html>
