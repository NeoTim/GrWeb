<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="EUGameSite.left" %>



<html>
<head><title>
	用户操作列表
</title><link href="../CSS/oplist.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        a:link.c
        {
            font-size: 12px;
            color: #5A6A96;
            line-height: normal;
            font-style: normal;
            font-variant: normal;
            text-decoration: none;
        }
        a:visited.c
        {
            font-size: 12px;
            color: #5A6A96;
            line-height: normal;
            font-style: normal;
            font-variant: normal;
            text-decoration: none;
        }
        a:hover.c
        {
            font-weight: bold;
            font-size: 12px;
            color: #0070bc;
            line-height: normal;
            font-style: normal;
            font-variant: normal;
            text-decoration: none;
        }
    </style>

    <script src="js/oplist.js" type="text/javascript"></script>

    <script src="js/func.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
	    op_toged=true;//是否支持展开模式
	    op_CollapseNode=false;//（展开模式时）是否展开后收缩原展开的部分
	    op_homeindex=0;//（展开模式时）第一个展开的部分，小于零时启动cookie设置打开的区域
    </script>

</head>
<body class="op_listbg" onLoad="javascript:op_doload('userop')" onselectstart="javascript:op_bodyselectstart()">
    <table border="0" width="100%" cellpadding="0" id="op_tbzone">
        <tr>
            <td class="op_m_2" onClick="javascript:op_menuclick(this)" onMouseOver="javascript:op_menuover(this);"
                onmouseout="javascript:op_menuout(this)">
                <div id="leftimg">
                    <img border="0" src="../images/left/4-1.gif" width="33" height="29"></div>
                <div id="title">
                    信息管理</div>
                <div id="rightimg">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" id="op_tblist">
                    <tr>
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                            
                           
                            <a id="A1" class="c" href="account/myinfo.aspx" target="frameContent" runat="server">修改个人资料</a>
                          
                        </td>
                    </tr>
                    <tr>
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                            <a   id="A2" class="c" href="account/pwdModify.aspx" target="frameContent" runat="server">修改登录密码</a>
                        </td>
                    </tr>
                    <tr >
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                             <a   id="A3" class="c" href="account/BankPwdmodify.aspx" target="frameContent" runat="server">修改银行密码</a>
                        </td>
                    </tr>
                   
                    <tr >
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                             <a   id="A4" class="c" href="account/BankPwdmodify.aspx" target="frameContent" runat="server">下线玩家管理</a>
                        </td>
                    </tr>
                    <tr >
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                             <a   id="A6" class="c" href="regadr.aspx" target="frameContent" runat="server">下线注册地址</a>
                        </td>
                    </tr>

                    <tr >
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                             <a   id="A5" class="c" href="account/BankPwdmodify.aspx" target="frameContent" runat="server">查看收益</a>
                        </td>
                    </tr>
                    
                </table>
            </td>
        </tr>
    </table>
    
    
    
    <table border="0" width="100%" cellpadding="0" id="op_tbzone" >
        <tr>
            <td class="op_m_2" onClick="javascript:op_menuclick(this)" onMouseOver="javascript:op_menuover(this);"
                onmouseout="javascript:op_menuout(this)">
                <div id="leftimg">
                    <img border="0" src="../images/left/5-1.gif" width="33" height="29"></div>
                <div id="title">
                    银行记录</div>
                <div id="rightimg">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" id="op_tblist">
                 
                    <tr>
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                            <a class="c" href="account/transfersLog.aspx" target="frameContent">转账记录</a></a>
                        </td>
                    </tr>
                    <tr>
                        <td onMouseOver="javascript:op_lineon(this);" onMouseOut="javascript:op_lineout(this)"
                            onclick="javascript:op_lineat(this)">
                            <img border="0" src="../images/left/go.gif" width="6" height="11" />
                            <a class="c" href="account/dianchongLog.aspx" target="frameContent">充值记录</a></a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
   
</body>
</html>
