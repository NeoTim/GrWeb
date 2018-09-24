<!--#include file=../conn.TML-->
<p align="center"><b>BUG列表 <body background="../bg.jpg" STYLE="background-repeat :repeat-x">
</b></p>
<% set rs=server.createobject("adodb.recordset")
sql="select * from BugAdmin order by id desc"
rs.open sql,conn,1,1
do while not(rs.eof or rs.bof or err)%>
<%=rs("Time")%><%=rs("cont")%><hr>
<%rs.movenext
loop
rs.close
set rs=nothing	 
TMLcn_footer%> 
 