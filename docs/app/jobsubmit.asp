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
biographical=nickname&"����"&userip&"ӦƸ"&job&chr(13)&chr(10)&"�ֻ���"&mobile&chr(13)&chr(10)&"email��"&email&chr(13)&chr(10)&"qq��"&qq&chr(13)&chr(10)&biographical
'biographical=replace(fileDesc,chr(13),"<br>")
conn.execute "insert into job(biographical) values('"&biographical&"')"
%>
<script>alert("�������յ����ļ�����������Ա����7������������ϵ�������ȷ���󷵻ع�˾��ҳ");location.href='/';</script>
<%conn.close
end if%>
 
 