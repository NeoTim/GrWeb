<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news_show.aspx.cs" Inherits="GameWeb.news_show" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/i.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div id="content">
            <div class="ntitle">
                <asp:Label ID="labTitle" runat="server" />
            </div>
            <div class="ncontent">
                <asp:Label ID="labContent" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>