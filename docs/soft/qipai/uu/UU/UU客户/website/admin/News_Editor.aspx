<%@ Page Language="C#" AutoEventWireup="true" Codebehind="News_Editor.aspx.cs" Inherits="EUGameSite.Admin.News_Editor"
    ValidateRequest="false" %>


<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WebSite</title>
    <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
    <script type="text/javascript">
       

        function CheckIn() {
            var txtTitle = document.getElementById("txtTitle").value;
            var txtContent = document.getElementById("txtContent").value;

            if (txtTitle == "") {
                alert("请输入新闻标题...");
                document.getElementById("txtTitle").focus();
                return false;
            }
            if (txtTitle.value.length > 20) {
                alert("新闻标题不能超过20字");
                txtTitle.focus();
                return false;
            }
           if (txtContent == "") {
                alert("请输入新闻内容...");
                document.getElementById("txtContent").focus();
                return false;
            }
          
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <table cellpadding="0" cellspacing="0" border="0" width="300" class="Manage_Table">
                <tr>
                    <td colspan="2" class="Manage_Header">
                        <asp:Label ID="lblAction" runat="server"></asp:Label>新闻</td>
                </tr>
              
                 <tr>
                    <td class="Manage_Title">
                        新闻作者</td>
                    <td>
                        <asp:TextBox ID="txtAuthor" runat="server" Width="280px" MaxLength="200"></asp:TextBox>*(可不填)</td>
                </tr>
                <tr>
                    <td class="Manage_Title">
                        新闻标题</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Width="280px" MaxLength="200"></asp:TextBox>*(20字以内)</td>
                </tr>
               
                
               
               
              
               
                <tr>
                    <td colspan="2" class="Manage_Header">
                        新闻内容*</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <FCKeditorV2:FCKeditor ID="txtContent" runat="server" Height="400px">
                        </FCKeditorV2:FCKeditor>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="Manage_Title">
                        添加时间</td>
                    <td>
                        <asp:TextBox ID="txtCreateTime" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>
               
                <tr>
                    <td colspan="2" align="center" style="height: 30px">
                        <asp:Button ID="btn_Save" runat="server" CssClass="K2046_Button" OnClientClick="return CheckIn()" Text="保存" OnClick="btn_Save_Click" />
                        <asp:Button ID="btnCancel" runat="server" CssClass="K2046_Button" Text="取消" Visible="False" />
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
