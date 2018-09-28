<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news_list.aspx.cs" Inherits="GameWeb.news_list" %>
<%@ Register Assembly="WTS" Namespace="WTS.WebControls" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/i.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       

        <div id="content">
            
            <cc1:ExRepeater ID="ExRepeater_NewsList" runat="server" AllowPaging="True"  Width="100%"
                onpageindexchanging="ExRepeater_NewsList_PageIndexChanging" PageSize="20" 
                PagingMode="PostBack">
                <HeaderTemplate>
                    <ul class="list">   
                </HeaderTemplate>
                <ItemTemplate>
                    <li><a href="News_show.aspx?id=<%#Eval("ID") %>" title='<%#Eval("tit") %>'>
                        <%#Eval("tit") %>
                    </a>
                        <div>
                            <%#Eval("tm","{0:d}") %>
                        </div>
                    </li>
                </ItemTemplate> 
<PagerSettings    ButtonStyle="Professional" ShowDropDownList="False" ShowTextBoxWithButton="False" ShowTotalText="False" TotalText="总记录:{0}&amp;nbsp;&amp;nbsp;总页数:{1}&amp;nbsp;&amp;nbsp;当前页:{2}&amp;nbsp;&amp;nbsp;" Position="Bottom" QueryString="Page" HorizontalAlign="NotSet">
  
</PagerSettings>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </cc1:ExRepeater>
        </div>
    </form>
</body>
</html>

