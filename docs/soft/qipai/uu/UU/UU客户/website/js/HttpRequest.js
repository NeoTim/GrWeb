function HttpRequest()
{
    /*
    Demo:
    
    var httpRequest = new HttpRequest();
    httpRequest.targetUrl = 'ggg.aspx';
    httpRequest.method = 'get';
    httpRequest.param = questString;
    httpRequest.callBack = GetWatchComplete;
    httpRequest.Send();
    
    function GetWatchComplete(status,html)
    {
        if(status==4)
        {
            $("UiWatchCalendar").innerHTML = html;
        }
    }
    
    */
    
    this.targetUrl = null;  //目前URL地址，必填
    this.method = 'post';   //请求的方式 post或者get
    this.param = null;  //参数 如：UserID=1&UserName=hqew
    this.callBack = null;   //回调的方法 如：GetWatchComplete  必填
    this.isAsyc = true; //是否异步执行

  
	var xmlHttp = null;
	var callBackFunction = null;

	if(window.ActiveXObject) {xmlHttp = new ActiveXObject('Microsoft.XMLHTTP');} 
	else if(window.XMLHttpRequest) {xmlHttp = new XMLHttpRequest();}
	
	this.Send = function()
	{
	    callBackFunction = this.callBack;
	
	    if(this.param!=null && this.method=='get')
	    {
	        this.targetUrl += "?"+ this.param;
	    }
	
		xmlHttp.open(this.method,this.targetUrl,this.isAsyc);
		
		if(this.isAsyc) //异步
		{
		    xmlHttp.onreadystatechange = this.handleStateChange;
		}
		
		if(this.method == 'post')
		{
		    xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;");
		}
		xmlHttp.send(this.param);
		
		if(!this.isAsyc) //非异步
		{   
		    this.handleStateChange();
		}
	}
	
	this.handleStateChange = function()
	{
		if(xmlHttp.readyState == 4) {
		    if(xmlHttp.status == 500 )
		    {
		        alert('页面源出错！');
		    }
			else if(xmlHttp.status == 200 && callBackFunction!=null) {
                callBackFunction(4,xmlHttp.responseText);
			}
		}
		else
		{
		    if( callBackFunction!=null)
		    {
		        callBackFunction(xmlHttp.readyState,null);
		    }
		}
	} 
}


// var http_request = new HttpRequest();
   var http_request=false;
    function createRequest()
    { 
       
        try//IE
        {
            http_request=new ActiveXObject("Msxml2.XMLHTTP");
        } 
        catch (e) 
        {
            try 
            {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e2) 
            {
                http_request = false;
            }
        }
        if (!http_request && typeof XMLHttpRequest != 'undefined') //FireFox
        {
            http_request = new XMLHttpRequest();
        }
    }
    
 
    