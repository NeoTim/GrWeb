<!--#include file=conn.TML--><body background="bg.jpg" STYLE="background-repeat :repeat-x">
  <table border="1"><tr><td>isread</td><td>biographical</td></tr>
<% set rs=server.createobject("adodb.recordset")
sql="select * from job order by id desc"
rs.open sql,conn,1,1
do while not(rs.eof or rs.bof or err)%>
<tr><td><%if rs("isread")=True then%>已读<%else%>未读<%end if%><br><%=rs("dt")%></td><td><pre><%=rs("biographical")%></pre></td></tr> 
<%rs.movenext
loop
rs.close
set rs=nothing	 
TMLcn_footer%> </table>
 