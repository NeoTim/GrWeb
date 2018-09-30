<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankOperation.aspx.cs" Inherits="EUGameSite.Bank.BankOperation" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta name="keyWords" content="786,棋牌乐,棋牌游戏,牛牛,斗地主,温州麻将,百变梭哈,两张" /><meta name="Description" content="温州本土棋牌游戏，游戏种类繁多，规则更加符合本土玩家的游戏习惯" /><meta name="Author" content="上海众启网络科技有限公司" /><title>
	UU游戏在线充值
</title><link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon" /><link rel="shortcut icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon" />
    
<link href="../css/frame.css" type="text/css" rel="stylesheet" /><link href="../css/gameCon.css" type="text/css" rel="stylesheet" /><link href="../css/main.css" type="text/css" rel="stylesheet" /></head>
<body>
    <form name="aspnetForm" id="aspnetForm" runat="server">



    
       

    



  
    <!--==========================================-->
  
        


<div id="main_right">
    <div class="accountTop"></div>
    <div class="accountMain" style="height:495px;">
    <h3 class="chargeTitle" style="text-align:center">UU棋牌游戏充值平台</h3>
    <div class="chargeTypeList">
        <ul>
            <li>
                <div class="chargeTypeLine">
                    <div class="tag"></div>
                    <span>易宝充值</span>
                </div>
                <div class="chargeTypeCon">
                    <img class="payIco" src="../images/200705291745390460.gif" alt="网银充值" />
                    <div class="payword">只要开通易宝服务，您都可立即享受安全、快捷的在线充值服务。</div>
                  <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="../images/pay_btn2.gif" onclick="ImageButton1_Click"></asp:ImageButton>
                </div>
            </li>
            <li>
                <div class="chargeTypeLine">
                    <div class="tag"></div>
                    <span>点卡充值</span>
                </div>
                <div class="chargeTypeCon">
                    <img class="payIco" src="../images/200705291747400348.gif" alt="点卡充值" />
                    <div class="payword">提供实物点卡的充值服务，即时充值即时到帐。 </div>
                    <a href="DianChongZhi.aspx" target="_self"><img src="../images/pay_btn2.gif" alt="立即充值" /></a>
                </div>
            </li>
        </ul><ul>
		<li style="width:630px; padding:10px; height:55px; text-align:center">
		  <h3 class="chargeTitle"><a href="bankoperation1.aspx">网上银行充值</a></h3>
		</li>
          </ul>
			</div>
    <div class="chargeTip">
        <p>感谢您使用uu棋牌游戏充值平台，请务必在提交之前核对清楚您的账号信息，以免出现重复下单或下单错误。如果您在充值过程中有遇到任何问题，或有任何意见及建议，欢迎您告诉我们，我们将为您提供最完善、最温馨的服务。<br />
            </p>
    </div>
    </div>
    <div class="accountBtm"></div>
</div>
<div style="clear:both;"></div>
<map name="map_charge" id="map_charge">
    <area shape="rect" coords="19,12,188,93" href="../Bank/BankOperation.aspx" alt="游戏充值" />
</map>

    </div>
  
    </form>
</body>
</html>
