<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gamelist.aspx.cs" Inherits="GameWeb.gamelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/frame.css" type="text/css" rel="stylesheet" />
     <link href="css/gameCon.css" type="text/css" rel="stylesheet" />
     <link href="css/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="dlListCon" align="center">
      <asp:DataList ID="Gamelist" runat="server" RepeatColumns="2" 
                    Width="550px" Height="603px" RepeatDirection="Horizontal">
                   
                    <ItemTemplate>
                        <div class="dlListBox">
            	<div class="dlListTopBg">
                    <%#Eval("tit")%></div>
                <div class="dlListBox2">
               
                      
                	    <img src='<%#Eval("hide")%>' width="171" height="98" alt='<%#Eval("tit")%>' />
                	
                  
                    <div class="dlListBtn">
                	    
                        <a href='news_show.aspx?id=<%#Eval("id") %>'><img src="images/rule_btn.gif" alt="游戏规则" /></a>
                    </div>
     
                </div>
            </div>
                    </ItemTemplate>
                </asp:DataList>
                <table style="width: 543px"><tr><td align="right"> <asp:linkbutton ID="lkPre" OnCommand="IndexChanging" CommandArgument="pre" runat="server" >上一页</asp:linkbutton>
              <asp:linkbutton ID="lkNext" OnCommand="IndexChanging" CommandArgument="next" runat="server" >下一页</asp:linkbutton>

            </td></tr></table>
               
            
    </div>
    </form>
</body>
</html>
