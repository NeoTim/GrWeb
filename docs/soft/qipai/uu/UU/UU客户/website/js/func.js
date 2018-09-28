Array.prototype.remove=function(dx)
{
    if(isNaN(dx)||dx>this.length){return false;}
    for(var i=0,n=0;i<this.length;i++)
    {
        if(this[i]!=this[dx])
        {
            this[n++]=this[i]
        }
    }
    this.length-=1
}

String.prototype.Trim = function() 
{ 
return this.replace(/(^\s*)|(\s*$)/g, ""); 
} 

String.prototype.LTrim = function() 
{ 
return this.replace(/(^\s*)/g, ""); 
} 

String.prototype.RTrim = function() 
{ 
return this.replace(/(\s*$)/g, "");
}
function ge(aname) {
    return document.getElementById(aname);
}
function getssdtop(){
	var vchild = window;
	var vtop = window.parent;
	try{
		while(vtop.name != 'SSDTop'){
			if (vtop.parent == null) break;
			if (vtop == vtop.parent) break;
			vchild = vtop;
			vtop = vtop.parent;
		}
	}catch(e){
		return vchild;
	}
	return vtop;
}

function pmatopen(apm, func){
    apm.attachEvent("onopened", func);            
}

function pmdtopen(apm, func){
    apm.detachEvent("onopened", func);            
}

function createpm(atopenerr){
    var div = document.createElement("div");
    div.style.display = "none";
    document.body.appendChild(div);
    div.innerHTML = "<object classid='clsid:24389722-6591-42CE-8D08-66D4D1230320' id='PageMaster'></object>";
    var pm = document.getElementById("PageMaster");
    pm.start();
    //pm.GetASPXID();
    if(atopenerr) pm.attachEvent("onopenerr", doopenerr);
    return pm;
}

function doopenerr(AUrl, AHtml){
    if(AHtml.substr(0, 13) == "EOleException"){
        var content = window.frames.frameContent;
        if (content == null) content = ssdtop.frames.frameContent;
        if (content == null) content = window;
        var location = content.location.toString();
        if(location.toLowerCase().indexOf("dbhelp.aspx") == -1){
            content.location = "/User/DBHelp.aspx?ac=compress";
        }
    }else{
        //alert("发送如下错误：" + AHtml + "\n请联系客服。");
        var vdocument = document;
        if (window.frames.frameContent != null) vdocument = window.frames.frameContent.document;
        vdocument.execCommand("refresh");
    }
}
        
function lcopen(AUrl, ABody, ASync, APM)
{
    var pm;
    if(APM != null) pm = APM; else pm = ssdtop.pm;
    pm.open(AUrl, ABody, ASync);
}

//Cookie读写////////////////////////////////////////////////////////////////////////////////////
function SetCookie(sName, sValue)
{
  //date = new Date();
  document.cookie = sName + "=" + escape(sValue) + "; expires=Fri, 31 Dec 3000 23:59:59 GMT;"// expires=" + date.toGMTString();
}

function GetCookie(sName)
{
  // cookies are separated by semicolons
  var aCookie = document.cookie.split("; ");
  for (var i=0; i < aCookie.length; i++)
  {
    // a name/value pair (a crumb) is separated by an equal sign
    var aCrumb = aCookie[i].split("=");
    if (sName == aCrumb[0]) 
    {
	    if (aCrumb.length==2) return unescape(aCrumb[1]);
	    else return "";
	}
  }

  // a cookie with the requested name does not exist
  return null;
}

//删除后，GetCookie取出的值为null
function DelCookie(sName)
{
  document.cookie = sName + "=; expires=Fri, 31 Dec 1899 23:59:59 GMT;";
}
//Cookie读写////////////////////////////////////////////////////////////////////////////////////

function getssdtop(){
	var vchild = window;
	var vtop = window.parent;
	try{
		while(vtop.name != 'SSDTop'){
			if (vtop.parent == null) break;
			if (vtop == vtop.parent) break;
			vchild = vtop;
			vtop = vtop.parent;
		}
	}catch(e){
		return vchild;
	}
	return vtop;
}
var ssdtop = getssdtop();


function IsInt(AStr)
{
  if ((AStr.Trim()=="")||(AStr.Trim()=="0")) return false;
  var checkOK = "0123456789";
  var checkStr = AStr;
  var allValid = true;
  var validGroups = true;
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
  }
  return allValid;
}

var SelectFLNameObj, SelectFLIdObj, SelectFLIdsObj;
function SelectFenLei(a,b,c,tb,cclass,msel,maxsel){
    SelectFLNameObj = a;
    SelectFLIdObj = b;
    SelectFLIdsObj = c;
    if(!maxsel) maxsel = 0;
    showModalDialog("/Dialog/SelectFenLei.aspx?tb="+tb+"&class="+cclass+"&msel="+msel+"&maxsel="+maxsel
        ,window
        ,"dialogHeight: 500px; dialogWidth: 700px; edge: Raised; center: Yes; help: No; resizable: No; status: yes;");
}

var SelSJmsel,SelSJuatype,SelSJdroplist,SelSJforfabu;
function SelectSJ(msel,uatype,droplist,forfabu){
    SelSJmsel = msel;
    SelSJuatype = SelSJuatype;
    SelSJdroplist = droplist;
    SelSJforfabu = forfabu;
    var url = "/Dialog/SelectSJ1.aspx";
    if(msel) url+="?msel=true";else url+="?msel=false";
    url+="&uatype="+uatype;
    return showModalDialog(url, window
        ,"dialogHeight: 400px; dialogWidth: 700px; edge: Raised; center: Yes; help: No; resizable: No; status: yes;");
}

//xmldoc
function getxmldoc(xml, ole){
    var xmlDoc = new ActiveXObject("Msxml2.DOMDocument");
    xmlDoc.async = false;
    if (xml != null) xmlDoc.loadXML(xml);
    else if(ole != null) xmlDoc.load(ole);
    return xmlDoc;
}

//xmldoc
function getxmlroot(xml, ole){
    var xmlDoc = getxmldoc(xml, ole);
    return xmlDoc.documentElement;
}

function boxclsname(boxcls){
    boxcls = parseInt(boxcls)
    var s = "";
    switch(boxcls){
        case 36: 
            s = "登录/注册";
            break;
        case 3: 
            s = "(发布) 求购信息";
            break;
        case 25: 
            s = "(发布) 供应信息";
            break;
        case 32: 
            s = "(发布) 合作信息";
            break;
        case 8: 
            s = "(发布) 产品信息";
            break;
        case 9: 
            s = "(发布) 公司信息";
            break;
        case 21:
            s = "(搜索) 供应信息";
            break;
        case 22:
            s = "(搜索) 求购信息";
            break;
        case 23:
            s = "(搜索) 公司信息";
            break;
        case 24:
            s = "(搜索) 产品库";
            break;
        case 10:
            s = "检索商机反馈";
            break;
        case 31:
            s = "搜索引擎登录";
            break;
        case 33:
            s = "(搜索) 供应信息";
            break;
        case 34:
            s = "(搜索) 求购信息";
            break;
        case 44:
            s = "(搜索) 产品库";
            break;
        case 45:
            s = "(搜索) 公司库";
            break;
        case 35:
            s = "(搜索) BT 种子";
        case 37:
            s = "信息引擎数据准备";
    }
    return s;
}