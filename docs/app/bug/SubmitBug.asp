
 <!--#include file="../conn.TML" --><body>

<%set rs=server.createobject("adodb.recordset")


'����SQL�Ƿ��ַ�����ʽ��html����
function Replace_Text(fString)
if isnull(fString) then
Replace_Text=""
exit function
else
fString=trim(fString)
fString=replace(fString,"'","''")
fString=replace(fString,";","��")
fString=replace(fString,"--","��")
fString=server.htmlencode(fString)
Replace_Text=fString
end if 
end function


sql="select * from BugAdmin"

rs.open sql,conn,1,1

if not(rs.eof or rs.bof or err) then
%><form name=form1 action=http://172.16.0.1/system/BugAdmin/inputBug.tml?id=<%=rs("id")%> method=post>
<table width="95%" border="0" cellpadding="12" cellspacing="1" class="tab1">
<tr><td>�ύ�ߣ�<input name=UpUser value="<%=rs("UpUser")%>">
</td><td>�ύ���ڣ�<input name=Time value="<%=rs("Time")%>"></td><td>�ɷ����ڣ�<input name=DoTime value="<%=rs("DoTime")%>"></td><td>������ڣ�<input name=EndTime value="<%=rs("EndTime")%>"></td><td>�޸��ߣ�<input name=WorkUser value="<%=rs("WorkUser")%>">

</td><td>��ǰ״̬��<b><input name=sta value="<%=rs("sta")%>"></b></font></td></tr><tr><td colspan="6"><b>BUG����</b><br>

<textarea name="cont" ><%=Replace_Text(rs("cont"))%></textarea> 
</td></tr></table><input type=submit value="����">
</form>
<script>
document.form1.submit();
</script>
<%
conn.execute "delete * from BugAdmin where id="&rs("id")
end if

rs.close

set rs=nothing	 
TMLcn_footer%> 