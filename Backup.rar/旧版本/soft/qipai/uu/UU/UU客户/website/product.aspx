<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="EUGameSite.product" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1"><link rel="shortcut icon" href="favicon.ico" /><meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><title>
	uu��Ϸ�ƹ�Ա-�ƹ�Ա�������|�ƹ�Ա���˽���
</title><meta name="keywords" content="����,������Ϸ,������Ϸ,������Ϸ��վ,UU����,������" /><meta name="description" content="UU������Ϸ��վ-UU�ͼ��˶�ϲ�����������Ϸƽ̨UU3d������Ϸ��վ�׶ȿ���1V1��սȫ���淨����,UU������Ϸ��վ������������Ϸ������8888Ԫ��,30��,����,ţţ,����,ˮ����,�ƾ�,������Ϸ,������ϷUU����������Ϸ��վ����ʵ���ˡ����˶��������." /><link href="css/index.css" rel="stylesheet" type="text/css" />
  
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
                                    ��Ϸ�Ҽ۸�
                                    <%#Eval("ProductPrice")%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="color: Red;" align="center">
                                    <a href='Productinfo.aspx?id=<%#Eval("id")%>&name=<%#Eval("ProductName")%>&price=<%#Eval("ProductPrice")%>'>����Ϸ�Ҷһ�
                                        </a>
                                   
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></div>
       
            
   





        </form>

    
</body>
</html>


