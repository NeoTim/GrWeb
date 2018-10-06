 <!--#include file="conn.TML" -->
<%
id=request("id")
WorkUser=request.form("WorkUser")
sta=request.form("sta")
 
	if sta="0" then	sql="update BugAdmin set workuser='"&workuser&"',sta="&sta&" where id="&id
	if sta="1" then	sql="update BugAdmin set workuser='"&workuser&"',sta="&sta&",DoTime=now() where id="&id
	if sta="2" then	sql="update BugAdmin set workuser='"&workuser&"',sta="&sta&",EndTime=now() where id="&id
		
		conn.execute sql 
		
 
TMLcn_footer%>
<a href=list.ASP>·µ»Ø</a>

