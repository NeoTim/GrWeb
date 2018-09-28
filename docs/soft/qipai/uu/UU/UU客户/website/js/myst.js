

function $get(id) {
	return document.getElementById(id);
}

function delegate(obj, fun) {
    return function() { fun.apply(obj, arguments); }
}

function getEvent(e) {
    e = window.event || e;
    if (e.target) {
        e.srcElement = e.target;
    }
    if (e.x && e.clientX) {//IE 8
    }
    else if (e.clientX) {//FF
        e.x = e.clientX;
    }
    if (e.y && e.clientY) {//IE8
    }
    else if (e.clientY) {//FF
        e.y = e.clientY;
    }
    return e;
}

function addEvent(elm, evType, fn, useCapture)
{
  if (elm.addEventListener){
    elm.addEventListener(evType, fn, useCapture);
    return true;
  } else if (elm.attachEvent) {
    var r = elm.attachEvent("on"+evType, fn);
    return r;
  } else {
    alert("Handler could not be add");
  }
} 
function removeEvent(elm, evType, fn, useCapture)
{
  if (elm.removeEventListener){
    elm.removeEventListener(evType, fn, useCapture);
    return true;
  } else if (elm.detachEvent){
    var r = elm.detachEvent("on"+evType, fn);
    return r;
  } else {
    alert("Handler could not be removed");
  }
}

function delegate(obj, fun) {
    return function() { fun.apply(obj, arguments); }
}

function getCookie(name) {
	var strCookie = document.cookie;
	if (!strCookie || !name)
		return null;
	var start = strCookie.indexOf(name + '=');  
	if (start == -1)
		return null;
	start += name.length + 1;
	var end = strCookie.indexOf(';', start);  
	if (end == -1)
		end = strCookie.length;  
	return unescape(strCookie.substring(start, end));
}
function setCookie(name, value, expires, path, domain, secure) {
    var today = new Date();
    today.setTime(today.getTime());
    if (expires)
        expires = expires * 1000 * 3600 * 24;
    var expires_date = new Date(today.getTime() + expires);
    document.cookie = name + '=' + escape(value) +
        ((expires) ? ';expires='+expires_date.toGMTString() : '') +
        ((path) ? ';path=' + path : '') +
        ((domain) ? ';domain=' + domain : '') +
        ((secure) ? ';secure' : '');
}
function deleteCookie( name, path, domain ) {
    if (getCookie(name))
		document.cookie = name + '=' +
            ((path) ? ';path=' + path : '') +
            (( domain ) ? ';domain=' + domain : '') +
            ';expires=Thu, 01-Jan-1970 00:00:01 GMT';
} 


function setCss(target, className) {
    if (typeof target == 'string') {
        target = $get(target);
    }
    target.className = className;
}

function addCss(target, className) {
 
    var n = className.trim();
    var str = "(^" + n + "$)|(^" + n + " )|( " + n + "$)|( " + n + " )";
    var reg = new RegExp(str, "g");

    if (typeof target == 'string') {
        target = $get(target);
    }
    var result = reg.test(target.className.trim());
   
    if (!result) {
        target.className += " " + n;
    }
}

function removeCss(target, className) {

    var n = className.trim();
    var str = "(^" + n + "$)|(^" + n + " )|( " + n + "$)|( " + n + " )";
    var reg = new RegExp(str, "g");

    if (typeof target == 'string') {
        target = $get(target);
    }
    target.className = target.className.trim().replace(reg, "").trim();
}

function toggleCss(target, className) {
 
    var n = className.trim();
    var str = "(^" + n + "$)|(^" + n + " )|( " + n + "$)|( " + n + " )";
    var reg = new RegExp(str, "g");

    if (typeof target == 'string') {
        target = $get(target);
    }
    var result = reg.test(target.className.trim());

    if (result) {
        target.className = target.className.trim().replace(reg, "").trim();
    }
  
    else {
        target.className += " " + n;
    }
}

function setStyle(target, property, value) {
    var obj = null;
    if (typeof target == 'string') {
        obj = $get(target);
    }
    else if (typeof target == 'object') {
        obj = target;
    }
    else {
        return;
    }
    if (obj == null) {
        return;
    }
    eval("obj.style." + property + "='" + value + "';");
}


function CreateRequestObject() {
    if (window.ActiveXObject) {
        var xmlHttpVersions = ["MSXML2.XMLHTTP.6.0", "MSXML2.XMLHTTP.5.0", "MSXML2.XMLHTTP.4.0",
                               "MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP", "Microsoft.XMLHTTP"];
        var request = false;
        for (var i = 0; i < xmlHttpVersions.length; i++) {
            try {
                request = new ActiveXObject(xmlHttpVersions[i]);
                return request;
            }
            catch (e) {
            }
        }
        return false;
    }
    else if (window.XMLHttpRequest)
        return new XMLHttpRequest();
    else
        return false;
}

function ajaxRequestText(method, url, data, callbackSucceed, callbackFailed) {
    var request = CreateRequestObject();
  
    if (!request) {
        return;
    }
 
    url += url.indexOf("?") == -1 ? "?random=" : "&random=";
    url += Math.random().toString();

    request.open(method, url, true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.onreadystatechange = function() {
      
        if (request.readyState == 4) {
        
            if (request.status == 200 && callbackSucceed != null)
                callbackSucceed(request.responseText);
            else if (callbackFailed != null)
                callbackFailed(request.status);
        }
    }
    request.send(data);
}
function requestText(method, url, data) {
    var request = CreateRequestObject();
  
    if (!request) {
        return;
    }
  
    url += url.indexOf("?") == -1 ? "?random=" : "&random=";
    url += Math.random().toString();

    request.open(method, url, false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(data);
	return request.responseText;
}

function ajaxRequestXML(method, url, data, callbackSucceed, callbackFailed) {
    var request = CreateRequestObject();
 
    if (!request) {
        return;
    }

    url += url.indexOf("?") == -1 ? "?random=" : "&random=";
    url += Math.random().toString();

    request.open(method, url, true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.onreadystatechange = function() {
      
        if (request.readyState == 4) {
          
            if (request.status == 200 && callbackSucceed != null) {
                callbackSucceed(request.responseXML);
            }
            else if (callbackFailed != null) {
                callbackFailed(request.status);
            }
        }
    }
    request.send(data);
}


String.prototype.trim = function() {
  
    return this.replace(/(^\s+)|(\s+$)/g, "");
}

String.prototype.ltrim = function() {
    return this.replace(/^\s+/, "");
}

String.prototype.rtrim = function() {
    return this.replace(/\s+$/, "");
}

String.format = function(format, arg, unknown) {
    var rx;
    for (var i = 1; i < arguments.length; i++) {
      
        rx = new RegExp('\\{' + (i - 1) + '\\}', 'g');
        format = format.replace(rx, arguments[i]);
    }
    return format;
}

String.prototype.toInt = function() {
    return parseInt(this, 10);
}

String.prototype.toFloat = function() {
    return parseFloat(this);
}


Date.prototype.toString = function(format) {
    format = format.toString();
   
    if (format.search('yyyy') != -1) {
        format = format.replace('yyyy', this.getFullYear().toString());
    }
    else if (format.search('yy') != -1) {
        format = format.replace('yy', this.getFullYear().toString().substr(2, 2));
    }
  
    if (format.search('MM') != -1) {
        if (this.getMonth() < 9) {
            format = format.replace('MM', '0' + (this.getMonth() + 1).toString());
        }
        else {
            format = format.replace('MM', (this.getMonth() + 1).toString());
        }
    }
    else if (format.search('M') != -1) {
        format = format.replace('M', (this.getMonth() + 1).toString());
    }
   
    if (format.search('dd') != -1) {
        if (this.getDate() < 10) {
            format = format.replace('dd', '0' + this.getDate().toString());
        }
        else {
            format = format.replace('dd', this.getDate().toString());
        }
    }
    else if (format.search('d') != -1) {
        format = format.replace('d', this.getDate().toString());
    }
  
    if (format.search('hh') != -1) {
        if (this.getHours() < 10) {
            format = format.replace('hh', '0' + this.getHours().toString());
        }
        else {
            format = format.replace('hh', this.getHours().toString());
        }
    }
    else if (format.search('h') != -1) {
        format = format.replace('h', this.getHours().toString());
    }
 
    if (format.search('mm') != -1) {
        if (this.getMinutes() < 10) {
            format = format.replace('mm', '0' + this.getMinutes());
        }
        else {
            format = format.replace('mm', this.getMinutes());
        }
    }
    else if (format.search('m') != -1) {
        format = format.replace('m', this.getMinutes());
    }
 
    if (format.search('ss') != -1) {
        if (this.getSeconds() < 10) {
            format = format.replace('ss', '0' + this.getSeconds().toString());
        }
        else {
            format = format.replace('ss', this.getSeconds().toString());
        }
    }
    else if (format.search('s') != -1) {
        format = format.replace('s', this.getSeconds().toString());
    }


    return format;
}