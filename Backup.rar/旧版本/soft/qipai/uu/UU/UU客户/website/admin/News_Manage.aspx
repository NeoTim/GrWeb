<%@ Page Language="C#" AutoEventWireup="true" Codebehind="News_Manage.aspx.cs" Inherits="EUGameSite.Admin.News_Manage" %>


<%@ Register Assembly="cn.K2046.ServerControl" Namespace="cn.K2046.ServerControl" TagPrefix="QinDeke" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WebSite</title>
    <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />

    <script language="javascript" src="JScript/javascript.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table cellpadding="0" cellspacing="0" border="0" class="Manage_Table">
            <tr>
                <td class="Manage_Header">
                    <asp:Label ID="新闻公告管理" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 30px; padding: 5px;" align="center">
                   <asp:Button ID="btnAddNew" runat="server" CssClass="K2046_Button" Text="新增" OnClick="btnAddNew_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="MyGridView" runat="server" AutoGenerateColumns="False" 
                        BorderStyle="Solid" CellPadding="3" Width="100%" AllowPaging="True" 
                        DataKeyNames="ID" OnRowCreated="MyGridView_RowCreated" 
                        CssClass="GridView_Table" PageSize="20" OnDataBound="MyGridView_DataBound" 
                        onrowdeleting="MyGridView_RowDeleting" >
                        <FooterStyle CssClass="GridView_Footer" />
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="ID" />
                            
                            <asp:BoundField HeaderText="新闻标题" DataField="tit" />
                         
                           
                         
                 
                            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="News_Editor.aspx?ID={0}" HeaderText="编辑" Text="编辑"></asp:HyperLinkField>
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                            
                        </Columns>
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <PagerStyle CssClass="GridView_Pager" />
                        <HeaderStyle Font-Bold="True" CssClass="GridView_Header" />
                        <AlternatingRowStyle CssClass="GridView_AlternatingRow" />
                        <RowStyle CssClass="GridView_Row" />
                        <PagerSettings Mode="NumericFirstLast" Visible="False" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="GridView_Footer">
                    <QinDeke:K2046Pager ID="K2046Pager1" runat="server" OnPageIndexChange="K2046Pager1_PageIndexChange" ShowDescription="True" ShowGotoPage="True" ShowNumberList="True">
                    </QinDeke:K2046Pager>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
