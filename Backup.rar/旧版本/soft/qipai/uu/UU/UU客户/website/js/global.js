// JavaScript Document
//
function setnav(){
	var nav = document.getElementById("nav");
	var onav = nav.childNodes;
	for(var i=0;i<onav.length;i++){	
		onav[i].onmouseover = function(){
			this.className = "current";	
		}
		onav[i].onmouseout = function(){
			this.className = "";
		}
	}
	var sUrl = window.location.href;
	var sUrls = sUrl.split("\/");
	//alert(sUrls[3]);
	if(sUrls[3]==""){
       		document.getElementById("nav_index").className = "current2";
		document.getElementById("nav_index").onmouseout = function(){
			this.className = "current2";
		}
	}else if(sUrls[3]=="shop"){
       		document.getElementById("nav_shop").className = "current2";
		document.getElementById("nav_shop").onmouseout = function(){
			this.className = "current2";
		}
	}else if(sUrls[3]=="game"){
       		document.getElementById("nav_top").className = "current2";
		document.getElementById("nav_top").onmouseout = function(){
			this.className = "current2";
		}
	}else if(sUrls[3]=="service"){
       		document.getElementById("nav_service").className = "current2";
		document.getElementById("nav_service").onmouseout = function(){
			this.className = "current2";
		}
	}else if(sUrls[3]=="pay"){
      	 	document.getElementById("nav_pay").className = "current2";
		document.getElementById("nav_pay").onmouseout = function(){
			this.className = "current2";
		}
	}
	/****************/
	var left = document.getElementById("left");
	if(left){left.innerHTML += "<div id='left_under'></div>";}
};
function $(id){
    return document.getElementById(id);
}
//
function setSelect(id, v){
    var slt = $(id);

    for (var i = 0; i < slt.options.length; i++)
    {
        if (slt.options[i].value == v)
            slt.options[i].selected = true;
    }
}
function set(t,s){
	var ul_type = document.getElementById(t);
	var aul_type = ul_type.childNodes;
	var ul_list = document.getElementById(s);
	var aul_list = ul_list.childNodes;
	for(var i=0;i<aul_type.length;i++){
		aul_type[i].value = i;
		aul_list[i].className = "hidden";
		aul_type[i].onmouseover = function(){
			for(var k=0;k<aul_type.length;k++){
				aul_type[k].className = "";
			}
			this.className = "current";
			for(var k=0;k<aul_list.length;k++){
				aul_list[k].className = "hidden";
			}
			aul_list[this.value].className = "show";
		}
		if(aul_type[i].className=="current"){
			aul_list[i].className = "show";
		}
	}
}
/**/
function setcurrent(id){
	var o = document.getElementById(id);
	o.className = "current";
}

var xmlHttp;
    function createXMLHttpRequest()
    {
        if(window.ActiveXObject)
        {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if(window.XMLHttpRequest)
        {
            xmlHttp = new XMLHttpRequest();
        }
    }
    //处理方法
    function CheckUserName()
    {
        createXMLHttpRequest();
        var url= "/MyGame/LoginValidate.ashx?username="+escape(document.getElementById("uid").value);
        
        xmlHttp.open("post",url,true);
        xmlHttp.onreadystatechange=ShowResult;
        xmlHttp.send(null);
        //document.getElementById("Msg").innerHTML='';
    }
    //回调方法
    function ShowResult()
    {
        if(xmlHttp.readyState==4) 
        {
            if(xmlHttp.status==200)
            {
                document.getElementById("ErrorUserName").innerHTML=unescape(xmlHttp.responseText);
            }
        }
    }
function close_result()
{
    $("result").style.display = "none";
    $("ErrorMessage").style.display = "none";
}
<!--
//var HostName = "http://192.168.1.116";
function PageCheck(field){
	if(field==null)return false;
	var i=parseInt(field.value);
	if(isNaN(i)){
		alert("页码必须为数字!");
		try{
			field.focus();
		}catch(E){}
		try{
			field.select();
		}catch(E){}
		return false;
	}else{
		field.value=Math.max(i,1);
		return true;
	}
}
function isNum(str){sNum = "0123456789";for(i=0,j=0;i<str.length;i++){
if(sNum.indexOf(str.charAt(i)) < 0) return false;if(str.charAt(i) == '.') j++;if(j>1) return false;}return true;}
function isInt(str){sNum = "0123456789";for(i=0,j=0;i<str.length;i++){if(sNum.indexOf(str.charAt(i)) < 0) return false;}return true;}
function isValid(o){return o!=null;};
function tryFocus(o){try{o.focus();}catch(e){}};
function Void(){};
function ShowErr(str,o){
	//隐藏其它显示标签
	try{
		err1 = document.getElementById("ErrMessages");
		if(err1){
			err1.style.display = "none";
		}
	}
	catch(e){}
	//显示标签
	try{
		err = document.getElementById(o);
		if(!err){
			alert('未找到错误显示标签!');
			return false;
		}
		err.innerHTML=str;
	    err.style.display='';
	}
	catch(e){}
}

function HiddrenError(o){
    
}
function CheckLoginForm(f){
	u = f.user.value;
	if(u.length == 0 || u.length > 20){
	ShowErr("用户名长度需在1~12之间!","ErrMessage");return FSF(f.user);}
	/*
	Parttern = /^([a-zA-Z0-9]|[\u4E00-\uFA2D])+$/;
	if(!pattern.test(u)){alert("用户名包含非法字符!");f.TBUid.select();f.TBUid.focus();return false;}
	*/
	p = f.password.value;
	if(p.length < 6 || p.length > 20){
	ShowErr("密码长度需在6~20之间!","ErrMessage");return FSF(f.password);}
	//p2 = f.checkcode.value;
	//if(p2 != "")
	//if(p2.length < 1 || p2.length > 20){
	//ShowErr("二级密码长度需在6~20之间!","ErrMessage");return FSF(f.password_bank);}
	v = f.checkcode.value;
	if(v.length != 4){ShowErr("请输入4位验证码!","ErrMessage");f.checkcode.select();f.checkcode.focus();return false;}
	return true;
}
function checkNickName(f)
{
    alert("sad");
    un = f.name.value;
	if(un.length !=0)
	{
	    if(un.length2() < 0 || un.length2() > 12){ShowErr("用户昵称长度需在0~12之间!","Eorrname");return FSF(f.name);}
	    if(!pattern.test(un)){ShowErr("用户昵称包含非法字符!!","Eorrname");return FSF(f.name);}
	}
	return true;
}

function CheckRegForm(f){
    ShowErr("", "ErrMessage");
    ShowErr("", "Eorrpass");
   
	u = f.uid.value;
	if(u.length2() < 1 || u.length2() > 12)
	{
	    ShowErr("用户名长度需在1~12个字符之间,且1个汉字为2个字符!","ErrorUserName");return FSF(f.uid);
	 }
	pattern = /^([a-zA-Z0-9]|[\u4E00-\uFA2D])+$/;
	if(!pattern.test(u)){ShowErr("用户名包含非法字符!!","ErrMessage");return FSF(f.uid);}
	
	p = f.password.value;
	if(p.length2() < 6 || p.length2() > 20){ShowErr("密码长度需在6~20之间!","Eorrpass");return FSF(f.password);}
	p2 = f.passwordtoo.value;
	if(p2.length2() < 6 || p2.length2() > 20 || p2 != p){ShowErr("确认密码不匹配!","ErrMessage");return FSF(f.passwordtoo);}
    
   
	//测试密码长度,包括汉字密码
	len = 0;
	ary = escape(p).match(/(%u[0123456789ABCDEF]{4})+/g);
	if(ary){
		len = unescape(ary.join("")).length * 2;
		p = unescape(escape(str).replace(/(%u[0123456789ABCDEF]{4})+/g,""));
		len += p.length;
	}else{
		len = p.length;
	}
	if(len > 20){
		ShowErr("密码长度需在6~20之间!","ErrMessage");
		return FSF(f.password);
	}
	
	// 核对个性签名
	un = f.nickname.value;
	if(un.length !=0)
	{
	    if(un.length2() < 0 || un.length2() > 48){ShowErr("个性签名长度需在0~48之间!","ErrorNickname");return FSF(f.name);}
	    if(!pattern.test(un)){ShowErr("用户昵称包含非法字符!!","Eorrname");return FSF(f.name);}
	}
	//如果显示了填写详细资料,则需要验证
	if(document.getElementById("RBMore").checked == true)
	{
	    ShowErr("", "ErrMessage1");
	    ShowErr("", "ErrorRealname");
	    ShowErr("", "ErrMessage3");
		 // 核对身份证号码
    
//		p3 = f.secpassword.value;
//        p4 = f.secpasswordtoo.value;
//        if (p3.length==0)
//        {
//            ShowErr("请输入银行密码!","Eorrpass1");return FSF(f.secpassword);
//        }
//        
//        if (p3.length!=0)
//        {
////	        if (id.length == 0 || (id.length != 15 && id.length != 18) || !isNum(id))
////            {ShowErr("身份证号码不合法!","ErrMessage3");return FSF(f.U_idcard);}
//	        if(p3.length2() < 6 || p3.length2() > 20){ShowErr("银行密码长度需在6~20之间!","Eorrpass1");return FSF(f.password_bank);}
////	        if (p==p3){ShowErr("二级密码和密码不能相同,为了安全请重新输入二级密码!","Eorrpass1");return FSF(f.password_bank);}
//	        if(p4.length2() < 6 || p4.length2() > 20 || p4 != p3){ShowErr("银行密码前后不匹配!","ErrMessage2");return FSF(f.password_banktoo);}
//        	
//	        //测试密码长度,包括汉字密码
//	        len = 0;
//	        ary = escape(p3).match(/(%u[0123456789ABCDEF]{4})+/g);
//	        if(ary){
//		        len = unescape(ary.join("")).length * 2;
//		        p3 = unescape(escape(str).replace(/(%u[0123456789ABCDEF]{4})+/g,""));
//		        len += p3.length;
//	        }else{
//		        len = p3.length;
//	        }
//	        if(len > 20){
//		        ShowErr("银行密码长度需在6~20之间!","ErrMessage");
//		        return FSF(f.password_bank);
//	        }
//	    }
        pattern = /^([a-zA-Z0-9]|[\u4E00-\uFA2D])+$/;
		realname = f.Realname.value;
		if (realname.length2() == 0 || !pattern.test(realname))
		{
		    ShowErr("请正确输入您的用户名", "ErrorRealname");
		    return FSF(f.Realname);
		}
	    
	    em = f.Email.value;
		pattern = /^(\w|_|\.)+@((\w|_|\-)+\.)+(\w){2,3}$/;
		if(!pattern.test(em)){ShowErr("你输入的E-mail不合法!","ErrMessage1");return FSF(f.Email);}
		
		id = f.U_idcard.value;
        if (id.length == 0 || (id.length != 15 && id.length != 18) || !isNum(id))
        {ShowErr("身份证号码不合法!","ErrMessage3");return FSF(f.U_idcard);}
		//if (f.U_question.value.length==0){ShowErr("请输入密码提示问题!","ErrMessage1");return FSF(f.U_question);}
		//if (f.U_answer.value.length==0){ShowErr("请输入密码提示答案!","ErrMessage1");return FSF(f.U_answer);}
		//if (f.U_phone.value.length==0){ShowErr("请输入电话号码!","ErrMessage1");return FSF(f.U_phone);}
		//p = f.password_bank.value;
		//if(p.length2() < 6 || p.length2() > 20){ShowErr("二级密码长度需在6~20之间!","ErrMessage1");return FSF(f.password_bank);}
		//p2 = f.password_banktoo.value;
		//if(p2.length2() < 6 || p2.length2() > 20 || p2 != p){ShowErr("确认二级密码不匹配!","ErrMessage1");return FSF(f.password_banktoo);}
	}

	return true;
}
function CheckLock(f){
	try{
		if(f.uid.value == ''){ShowErr("请输入需要解锁的账号","ErrMessage");return FSF(f.uid);}
		if(f.password.value == ''){ShowErr("请输入需要解锁账号的密码","ErrMessage");return FSF(f.password);}
		//if(f.password2.value == ''){ShowErr("请输入需要解锁账号的二级密码","ErrMessage");return FSF(f.password2);}
	}
	catch(e){}
    if(f.pwd.value == ''){ShowErr("请输入指定的解锁密码","ErrMessage");return FSF(f.pwd);}
    if(f.pwd2.value == ''){ShowErr("请输入指定的确认解锁密码","ErrMessage");return FSF(f.pwd2);}
    if(f.pwd.value.length < 6 || f.pwd2.value.length <6){ShowErr("解锁密码长度需在6~20之间","ErrMessage");return FSF(f.pwd);}
    if(f.pwd.value != f.pwd2.value){ShowErr("解锁密码与确认解锁密码不一致","ErrMessage");return FSF(f.pwd);}
    return true;
};
function CheckPassword(f){
	try{
		if(f.pwd.value == ''){ShowErr("请输入新密码","ErrMessage");return FSF(f.pwd);}
		if(f.pwd.value.length < 6 || f.pwd.value.length > 20){ShowErr("密码长度需在6~20之间!","ErrMessage");return FSF(f.pwd);}
		if(f.pwd2.value == ''){ShowErr("请输入确认新密码","ErrMessage");return FSF(f.pwd2);}
		if(f.pwd.value != f.pwd2.value){ShowErr("新密码与确认新密码不一致","ErrMessage");return FSF(f.pwd);}
		return true;
	}
	catch(e){}
}
function CheckSPassword(f){
	try{
	    if(f.idcard.value == ''){ShowErr("请输入身份证号码","ErrMessage");return FSF(f.idcard);}
	    if(f.idcard.value.length != 15 && f.idcard.value.length != 18){ShowErr("身份证号码不合法","ErrMessage");return FSF(f.idcard);}
	    em = f.Email.value;
		pattern = /^(\w|_|\.)+@((\w|_|\-)+\.)+(\w){2,3}$/;
		if(!pattern.test(em)){ShowErr("你输入的E-mail不合法!","ErrMessage");return FSF(f.Email);}
	    if (f.U_question.value.length==0){ShowErr("请输入密码提示问题!","ErrMessage");return FSF(f.U_question);}
		if (f.U_answer.value.length==0){ShowErr("请输入密码提示答案!","ErrMessage");return FSF(f.U_answer);}
	    if (f.U_phone.value.length==0){ShowErr("请输入电话号码!","ErrMessage");return FSF(f.U_phone);}
		if(f.pwd.value == ''){ShowErr("请输入新二级密码","ErrMessage");return FSF(f.pwd);}
		if(f.pwd.value.length < 6 || f.pwd.value.length > 20){ShowErr("二级密码长度需在6~20之间!","ErrMessage");return FSF(f.pwd);}
		if(f.pwd2.value == ''){ShowErr("请输入确认新二级密码","ErrMessage");return FSF(f.pwd2);}
		if(f.pwd.value != f.pwd2.value){ShowErr("新二级密码与确认新二级密码不一致","ErrMessage");return FSF(f.pwd);}
		return true;
	}
	catch(e){}
}

function checkuid(f)
{
    ShowErr("", "ErrorUserName");
    u = f.uid.value;
	if(u.length2() < 1 || u.length2() > 12)
	{
	    ShowErr("用户名长度需在1~12个字符之间,且1个汉字2个字符!","ErrorUserName");return FSF(f.uid);
	 }
	pattern = /^([a-zA-Z0-9]|[\u4E00-\uFA2D])+$/;
	if(!pattern.test(u)){ShowErr("用户名包含非法字符!!","ErrorUserName");return FSF(f.uid);}
	
	}

function CheckInfo(f){
	try{
	    if(!CheckRealName(f.realname)) return false;
	    s = f.birthday.value;
		if(s != ''){
		    pattern = /^\d{4}-\d{1,2}-\d{1,2}$/;
		    ss = s.split('-');
		    //alert(ss[0] + '-' + ss[1] + '-' + ss[2]);
		    if(!pattern.test(s) || (ss[0] < 1930 || ss[0] > 2005) || (ss[1] < 1 || ss[1] > 12) || (ss[2] < 1 || ss[2] > 31)){ShowErr("您输入的生日不合法","ErrMessage");return FSF(f.birthday);}
		}
		if(f.ismobile.checked == true){
		    f.ismobile.value = 'on';
		    s = f.mobile.value;
		    if(s == ''){
		        ShowErr("您选择了手机邦定,则必须输入手机号码!","ErrMessage");return FSF(f.mobile);
		    }else{
		        if(s.substring(0,1) == '0') sl = s.length -1;
		        else sl = s.length;
		        if(sl != 11){ShowErr("您输入的手机号码不合法!非杭州号码可加 '0' !","ErrMessage");return FSF(f.mobile);}
		    }
		}else{
		    f.ismobile.value = 'off';
		}
		return true;
	}
	catch(e){}
}
function CheckCert(f){
	try{
	    if(f.uid.value == ''){ShowErr("请输入用户名","ErrMessage");return FSF(f.uid);}
	    if(f.pwd.value == ''){ShowErr("请输入密码","ErrMessage");return FSF(f.pwd);}
	    var s = f.idcard.value;
	    if(s == '' || (s.length != 18 && s.length != 15 && s != "忘记")){
	        ShowErr("请输入原证件号码或原证件号码不合法，如果不记得，请填“忘记”并选择同意封存","ErrMessage");return FSF(f.idcard);
		}
	    s = f.idcard2.value;
		if(s == '' || (s.length != 18 && s.length != 15)){ShowErr("请输入新证件号码或新证件号码不合法!","ErrMessage");return FSF(f.idcard2);}
		if(f.idcard2a.value != s){ShowErr("新证件号码和确认新证件号码不相等!","ErrMessage");return FSF(f.idcard2a);}
		if(f.newimg.value == ''){ShowErr("新证件必需要有复印件","ErrMessage");return FSF(f.newimg);}
		if(!CheckRealName(f.realname)) return false;
		if(!CheckEmail(f.email)) return false;
		if(f.isclose.value == 0){
		    s = f.idcard.value;
		    if(s.length != 18 && s.length != 15){ShowErr("您选择了提供复印件,但愿证件号码不合法!","ErrMessage");return FSF(f.idcard);}
		    if(f.oldimg.value == ''){ShowErr("您选择了提供复印件,但您未选择上传复印件的文件!","ErrMessage");return FSF(f.oldimg);}
		}
		 if(f.content.value.length > 200){ShowErr("说明内容已超出200字符!","ErrMessage");return FSF(f.content);}
		return true;
	}
	catch(e){return false;}
}
function CheckSrvMoney(f,url){
    s = f.money.value;
    if(s == ''){ShowErr("请输入要转移的银子数!","ErrMessage");return FSF(f.money);}
    if(!isInt(s)){ShowErr("您输入的银子数中含有非法字符!","ErrMessage");return FSF(f.money);}
    n = parseInt(s);
    if(isNaN(n)){ShowErr("您输入的银子数太大或太小!","ErrMessage");return FSF(f.money);}
    if(n < 1 || n > 4294967296){ShowErr("您输入的银子数太大或太小!","ErrMessage");return
FSF(f.money);}
    f.action = url;
    return true;
    //f.submit();
}
function CheckMoneyMoveOp(f,url){
    u = f.uid.value;
	if(u == ''){ShowErr("请输入接收银子的账户","ErrMessage");return FSF(f.uid);}
	if(u.length == 0 || u.length > 20){ShowErr("用户名长度需在1~20之间!","ErrMessage");return FSF(f.uid);}
	if(f.uid2.value == ''){ShowErr("请输入确认接收银子的账户","ErrMessage");return FSF(f.uid2);}
	if(f.uid2.value != u){ShowErr("确认接收银子的账户与接收银子的账户不相等","ErrMessage");return FSF(f.uid2);}
	if(!CheckSrvMoney(f,url)) return false;
	return true;
};
function CheckCard(f){
    try{
        if(f.cardtype.value == ''){ShowErr("请选择您所购买的卡类","ErrMessage");return FSF(f.cardtype);}
        if(f.game.value == ''){ShowErr("请选择您要充值的游戏","ErrMessage");return FSF(f.game);}
    }catch(e){}
    u = f.uid.value;
    if(u == ''){ShowErr("请输入您要充值的用户名","ErrMessage");return FSF(f.uid);}
    if(u.length == 0 || u.length > 20){ShowErr("用户名长度需在1~20之间!","ErrMessage");return FSF(f.uid);}
    u = f.pwd.value;
    if(u == ''){ShowErr("请输入您要充值用户名的密码","ErrMessage");return FSF(f.pwd);}
    if(u.length < 1 || u.length > 20){ShowErr("密码长度需在6~20之间!","ErrMessage");return FSF(f.pwd);}
    u = f.cid.value;
    if(u == ''){ShowErr("请输入您要充值的卡号","ErrMessage");return FSF(f.cid);}
    if(u.length != 12){ShowErr("请输入12位卡号!","ErrMessage");return FSF(f.cid);}
    if(!isInt(u)){ShowErr("卡号含有非法字符!","ErrMessage");return FSF(f.cid);}
    u = f.cpwd.value;
    if(u == ''){ShowErr("请输入您要充值卡的密码","ErrMessage");return FSF(f.cpwd);}
    if(u.length != 8){ShowErr("请输入8位密码!","ErrMessage");return FSF(f.cpwd);}
    return true;
}
function Submit(f,url){
    f.action = url;
}
function FileSubmit(o){
    try{
        if(CheckCert(o))o.submit();
    }
    catch(e){
        //alert(e.number + ',' + e.description);
        if(e.number == -2147024891)ShowErr("请选择正确的图片文件路径!","ErrMessage");
    }
}
function FSF(o){
    try{
        o.select();
        o.focus();
    }
    catch(e){}
    return false;
}
function ChangeClothPrice(s,id){
	o = null;
	try{
		o = document.getElementById(id);
	}catch(e){return;}
	sp = s.split('|');
	s0 = sp[1];
	p0 = sp[2];
	str = null;
	if(p0 != 0) str = p0 + "银子";
	if(s0 != 0)
		if(p0 != 0) str += "或" + s0 + "积分";
		else str = s0 + "积分";
	o.innerText = str;
}
function AttachClothID(o,id){
	if(o.href.indexOf("id") > 0) return;
	o1 = null;
	try{
		o1 = document.getElementById(id);
	}catch(e){return;}
	sp = o1.value.split('|');
	o.href += "&id=" + sp[0];
}
function CheckRealName(o){
    s = o.value;
    if(s == ''){ShowErr("请输入真实姓名","ErrMessage");return FSF(o);}
	pattern = /^([\u4E00-\uFA2D])+$/;
	if(!pattern.test(s)){ShowErr("您输入真实姓名不合法","ErrMessage");return FSF(o);}
	sl = s.length * 2;
	if(sl < 4 || sl> 12){ShowErr("您输入真实姓名过短或过长","ErrMessage");return FSF

(o);}
	return true;
}
function CheckEmail(o){
    s = o.value;
    if(s == ''){ShowErr("请输入Email,以便我们与您联系!","ErrMessage");return FSF(o);}
    pattern = /^(\w|_|\.)+@((\w|_|\-)+\.)+(\w){2,3}$/;
    if(!pattern.test(s)){ShowErr("您输入的Email不合法!","ErrMessage");return FSF(o);}
    return true;
}
function CheckReceiveUid(o){
    var uid,name,btn,btn1,siteRoot;
        uid = o.uid.value;
        siteRoot=o.siteRoot.value
        if(uid == '' || uid.length2() > 18) return;
        btn = o.checkuid;
        btn1 = o.submit1;
        btn.disabled = true;
        btn1.disabled = true;
        var url = siteRoot + "/shop/query.html";
		
        var str = "action=QueryName&uid=" + escape(uid);
        name = PostXml(url,str);
		
    if(name != null && name != ""){
        btn1.disabled = false;
        document.getElementById("username").innerText = name;
    }else{
        document.getElementById("username").innerText = "未找到该用户";
    }
    btn.disabled = false;
};

function CheckRUid(o){
    var uid,name,btn,btn1,siteRoot;
        uid = o.uid.value;
        siteRoot=o.siteRoot.value
        if(uid == '' || uid.length2() > 18) return;
        var url = siteRoot + "/home/checkuid.html";
        var str = "action=QueryName&uid=" + escape(uid);
        name = PostXml(url,str);
    if(name != null && name != ""){
        document.getElementById("Eorrusername").innerText = "已经有人注册,请重新输入用户!";
        o.uid.focus();
    }else{
        document.getElementById("Eorrusername").innerText = "该用户可以注册!";
    }
};

function ClothListChange(i,n1,n2){
	//try{
		o1 = document.getElementById(n1);
		if(o1)o1.options[i].selected = true;
		o2 = document.getElementById(n2);
		if(o2)o2.options[i].selected = true;
	//}
	//catch(e){
	//	alert(e);
	//}
}
function PKEnter(o){
	try{
		if(event.keyCode == 13){
			if(event.srcElement.value != '')
				o.click();
			else{
				event.srcElement.focus();
			}
			event.returnValue = false;
		}
	}
	catch(e){}
	return false;
}
function PKCheck(o,o1){
	try{
		if(event.keyCode == 13)event.returnValue = false;
		o1.disabled = true;
		
	}
	catch(e){}
}
function PKAction(o){
	try{
		if(event.keyCode == 13){
			if(event.srcElement.value != ''){
				//o.submit();
				return true;
			}else{
				event.srcElement.focus();
				event.returnValue = false;
			}
		}
	}
	catch(e){}
	return false;
}
function PKFocus(o){
	try{
		if(event.keyCode == 13){
			if(event.srcElement.value != '')
				o.focus();
			else{
				event.srcElement.focus();
			}
			event.returnValue = false;
		}
	}
	catch(e){}
	return false;
}
function LoadHtm(id,f){
	if(id == null || f == null || id=="" || f == "") return;
	o = null;
	try{
		o = document.getElementById(id);
		o.innerHTML=LoadXml(f);
	}
	catch(e){alert(e.description);}
}
function LoadXml(f){
	//ret = false;
	if(f == null || f == "") return null;
	xmlhttp = false;
	try{
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	}catch(e){
		try{
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		catch(E){}
	}
	if(!xmlhttp && typeof XMLHttpRequest != 'undefined'){
		try{
			xmlhttp = new XMLHttpRequest();
		}
		catch(e){}
	}
	if(!xmlhttp && window.createRequest){
		try{
			xmlhttp = window.createRequest();
		}
		catch(e){}
	}
	if(!xmlhttp){alert('您的浏览器不支持ActiveX控件,请设置你的浏览器!');return;}
	xmlhttp.open("GET",f,false);
	/*xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState == 4){
			try{
				//document.write("hello");
				o.innerHTML=xmlhttp.responseText;
			}
			catch(e){alert(e.description);}
			ret = true;
		}
	}*/
	xmlhttp.send(null);
	if(isValid(xmlhttp.status)){
		n = xmlhttp.status;
		if(n == 200){
			return xmlhttp.responseText;
			//alert(e.description);
		}
		if(n == 401 || n == 403 || n == 404 || n == 408 || n == 500 || n == 503){
			//alert(n);
			//ret = true;
		}
	}
	return null;
}
function delay1(n){
	id = setTimeout("Void()",n);
	clearTimeout(id);
}
function PostXml(url,str){
    var xmldom = xmlhttp = false;
   
    try{
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        xmldom = new ActiveXObject("Microsoft.XMLDOM");
        
    }
    catch(e){}
    if(!xmlhttp || !xmldom){alert('您的浏览器不支持ActiveX控件,请设置你的浏览器!');return;}
    xmlhttp.open("POST",url+"?"+str,false);
    xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xmlhttp.send();
    xmldom.async = false;
    xmldom.validateOnParse = false;
    xmldom.load(xmlhttp.responselXml);
    if(xmldom.readyState == 4) return xmlhttp.responseText;//return ByteToString

(xmlhttp.responseBody);
    return null;
}
//注册安全性检查
function BlurUid(o){
    var u = o.value;
    if(u.length==0)
    {
        return FSF(o);
    }
    if(u.length < 6 || u.length > 20)
    {
        ShowErr("用户名长度需在6~20之间!","ErrMessage");
        return FSF(o);
    }
    pattern = /^([a-zA-Z0-9]|[\u4E00-\uFA2D])+$/;
    if(!pattern.test(u))
    {
        ShowErr("用户名包含非法字符!!","ErrMessage");
        return FSF(f.uid);
    }
}
function BlurPwd(o,o1){
    var p = o.value;
    
    if(p.length < 6 || p.length > 20)
    {
        ShowErr("密码长度需在6~20之间!","ErrMessage");
        return FSF(o);
    }else{
        HiddrenError();
    }
    //o1.style.display = "none";
}
function BlurPwd2(o){
    var p2 = o.value;
    if(p2.length < 6 || p2.length > 20 || p2 != p)
    {
        ShowErr("确认密码不匹配!","ErrMessage");
        return FSF(f.passwordtoo);
    }
}
function FocusPwd(o,o1){

    o1.style.display = "";
}
function checklevel(o,lo){
	var patrn1 = /[0-9]/;
	var patrn2 = /[a-zA-Z]/;
	var patrn3 = /\W/;
	if(patrn1.test(o.value) || patrn2.test(o.value) || patrn3.test(o.value)){
		if(patrn1.test(o.value) && patrn2.test(o.value) && patrn3.test(o.value)){
			lo.innerHTML = "<span class='levelinit'>弱</span><span class='levelinit'>中</span><span class='level3'>强</span>";
		}else{
			if((patrn1.test(o.value) && patrn2.test(o.value)) || (patrn1.test(o.value) && patrn3.test(o.value)) || (patrn2.test(o.value) && patrn3.exec(o.value))){
				lo.innerHTML = "<span class='levelinit'>弱</span><span class='level2'>中</span><span class='levelinit'>强</span>";
			}else{
				lo.innerHTML = "<span class='level1'>弱</span><span class='levelinit'>中</span><span class='levelinit'>强</span>";
			}
		}
	}else{
		lo.innerHTML = "<span>密码安全性检测</span></div>";
	}
}
String.prototype.length2 = function() {
    var cArr = this.match(/[^x00-xff]/ig);
    return this.length + (cArr == null ? 0 : cArr.length);
}
//取得网卡地址
function getmac(mac)
{
    try 
    {
    var tools = new ActiveXObject("GameTools.Tools");
    document.getElementById(mac).value = tools.GetMac();
    }
    catch(e){}
}
//-->
//切换广告
function ad(sId,aList){
	this.oDiv = document.getElementById(sId);
	if(this.oDiv){
		this.oDiv.innerHTML = "广告加载中...";
		this.list = aList;
		this.i = 0;
		this.show();
	}else{
		//alert("广告未找到！");
	}
}
ad.prototype.show = function(){
	var str = "";
	var sSrc = this.list[this.i][0];
	var sUrl = this.list[this.i][1];
	var iWidth = this.list[this.i][2];
	var iHeight = this.list[this.i][3];
	var iTime = this.list[this.i][4];
	var adtype = sSrc.split(".")[sSrc.split(".").length-1].toLowerCase();
	if(adtype=="swf"){
		str = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' width='"+iWidth+"' height='"+iHeight+"'>";
		str += "<param name='movie' value='"+sSrc+"' />";
		str += "<param name='quality' value='high' />";
		str += "<param name='wmode' value='transparent' />";
		str += "<embed src='"+sSrc+"' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='"+iWidth+"' height='"+iHeight+"'></embed>";
		str += "</object>";
	}else{
		str = "<img src='"+sSrc+"' width='"+iWidth+"' height='"+iHeight+"' border='0'/>"
		if(sUrl.length>0){
			str = "<a href='"+sUrl+"' target='_blank'>"+str+"</a>"
		}
	}
	this.oDiv.innerHTML = str;	
	if(this.list.length>1){
		var _self = this;
		setTimeout(function(){_self.show();},iTime);
		this.i = (this.i >= (this.list.length-1)) ? 0 : this.i+1;
	}
};