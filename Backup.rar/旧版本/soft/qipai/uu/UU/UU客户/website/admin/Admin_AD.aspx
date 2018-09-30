<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_AD.aspx.cs" Inherits="EUGameSite.Admin.Admin_AD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WebSite</title>
    <link type="text/css" rel="stylesheet" href="stylecss/admin.css" />
    <script language="javascript" src="JScript/javascript.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="0" cellspacing="0" border="0" class="Manage_Table">
                <tr>
                    <td class="Manage_Header">
                        广告位管理</td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" style="margin: 20px 0;">
                        <tr>
                               <th colspan="2" class="Manage_Header"><asp:Label ID="lblTip1" runat="server"></asp:Label>
                                    </th> 
                            </tr>
                            <tr>
                                <th colspan="2" class="Manage_Header">
                                    广告位一:(238*90 首页行一右下)</th>
                            </tr>
                            <tr>
                                <td>
                                    广告预览:</td>
                                <td>
                                    <div id="ad1" runat="server">
                                        <asp:Image ID="Image1" runat="server" Height="90px" Width="238px" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    链接地址:</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    文件上传:</td>
                                <td>
                                    <asp:FileUpload ID="Upload1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnAD1" runat="server" Text="确认" OnClick="btnAD1_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" style="margin: 20px 0;">
                        <tr>
                               <th colspan="2" class="Manage_Header"><asp:Label ID="lblTip2" runat="server"></asp:Label>
                                    </th> 
                            </tr>
                            <tr>
                                <th colspan="2" class="Manage_Header">
                                    广告位二:(780*94 首页行三banner)</th>
                            </tr>
                            <tr>
                                <td>
                                    广告预览:</td>
                                <td>
                                    <div id="ad2" runat="server">
                                        <asp:Image ID="Image2" runat="server" Height="80px" Width="525px" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    链接地址:</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    文件上传:</td>
                                <td>
                                    <asp:FileUpload ID="Upload2" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnAD2" runat="server" Text="确认" OnClick="btnAD2_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" style="margin: 20px 0;">
                        <tr>
                               <th colspan="2" class="Manage_Header"><asp:Label ID="lblTip3" runat="server"></asp:Label>
                                    </th> 
                            </tr>
                            <tr>
                                <th colspan="2" class="Manage_Header">
                                    广告位三:(502*70 
                                    首页中下banner[1])</th>
                            </tr>
                            <tr>
                                <td>
                                    广告预览:</td>
                                <td>
                                    <div id="Div1" runat="server">
                                        <asp:Image ID="Image3" runat="server" Height="70px" Width="502px" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    链接地址:</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    文件上传:</td>
                                <td>
                                    <asp:FileUpload ID="Upload3" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" style="margin: 20px 0;">
                        <tr>
                               <th colspan="2" class="Manage_Header"><asp:Label ID="lblTip4" runat="server"></asp:Label>
                                    </th> 
                            </tr>
                            <tr>
                                <th colspan="2" class="Manage_Header">
                                    广告位四:(502*70 首页中下banner[2])</th>
                            </tr>
                            <tr>
                                <td>
                                    广告预览:</td>
                                <td>
                                    <div id="Div2" runat="server">
                                        <asp:Image ID="Image4" runat="server" Height="70px" Width="502px" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    链接地址:</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    文件上传:</td>
                                <td>
                                    <asp:FileUpload ID="Upload4" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="确认" onclick="Button2_Click" 
                                        style="width: 40px"  /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
