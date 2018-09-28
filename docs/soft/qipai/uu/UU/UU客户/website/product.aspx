<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="EUGameSite.product" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1"><link rel="shortcut icon" href="favicon.ico" /><meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><title>
	uu游戏推广员-推广员收入天币|推广员加盟介绍
</title><meta name="keywords" content="赛金花,赛金花游戏,棋牌游戏,棋牌游戏网站,UU棋牌,斗地主" /><meta name="description" content="UU棋牌游戏网站-UU客家人都喜爱玩的棋牌游戏平台UU3d棋牌游戏网站首度开发1V1对战全新玩法赛金花,UU棋牌游戏网站斗地主赛金花游戏给力赛8888元大奖,30秒,三公,牛牛,赛金花,水果机,牌九,三公游戏,赛金花游戏UU武侠棋牌游戏网站真正实现了《与人斗其乐无穷》." /><link href="css/index.css" rel="stylesheet" type="text/css" />
  
    <link href="css/frame.css" type="text/css" rel="stylesheet" />
    <link href="css/gameCon.css" type="text/css" rel="stylesheet" />
    <link href="css/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="Form1"  runat="server">




     
                <div id="main" style="width:700px"><asp:DataList ID="HotGoods" runat="server" RepeatColumns="4" 
                    Width="700px" onselectedindexchanged="HotGoods_SelectedIndexChanged">
                    <ItemTemplate>
                        <table style="width: 180">
                            
                            <tr>
                                <td align="center" colspan="3">
                                   <a href='Productinfo.aspx?id=<%#Eval("id")%>&name=<%#Eval("ProductName")%>&price=<%#Eval("ProductPrice")%>'>
                                        <asp:Image ID="imgPhoto" runat="server" ImageUrl='<%#Eval("productSrc")%>' Height="75px" Width="110px" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3" style=" width:130px;color: Blue;">
                                  
                                        <%#Eval("ProductName")%>
                                
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3" style="width: 80px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" style="color: Blue;">
                                    游戏币价格：
                                    <%#Eval("ProductPrice")%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="color: Red;" align="center">
                                    <a href='Productinfo.aspx?id=<%#Eval("id")%>&name=<%#Eval("ProductName")%>&price=<%#Eval("ProductPrice")%>'>用游戏币兑换
                                        </a>
                                   
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></div>
       
            
   





        </form>

    
</body>
</html>


