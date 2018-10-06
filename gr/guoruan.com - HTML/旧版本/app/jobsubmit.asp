<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file=conn.TML-->
<!--#include file="ip.inc" -->  
<%biographical=request("biographical")
biographical=replace(biographical,"'","''")
if (biographical<>"") then
nickname=replace(request("replyer"),"'","")
job=replace(request("job"),"'","")
mobile=replace(request("mobile"),"'","")
email=replace(request("email"),"'","")
qq=replace(request("qq"),"'","") 
%>
<%userip = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
If userip = "" Then userip = Request.ServerVariables("REMOTE_ADDR") 
userip=Look_Ip(userip)&"("&userip&")"
%>
<%
biographical=nickname&"来自"&userip&"应聘"&job&chr(13)&chr(10)&"手机："&mobile&chr(13)&chr(10)&"email："&email&chr(13)&chr(10)&"qq："&qq&chr(13)&chr(10)&biographical
'biographical=replace(fileDesc,chr(13),"<br>")
conn.execute "insert into job(biographical) values('"&biographical&"')"
%>
<script>alert("我们已收到您的简历，工作人员将在7个工作日内联系您。点击确定后返回公司首页");location.href='/';</script>
<%conn.close
end if%>
 
 