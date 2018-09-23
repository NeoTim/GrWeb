
 <!--#include file="../conn.TML" --><body>

<%set rs=server.createobject("adodb.recordset")


'过滤SQL非法字符并格式化html代码
function Replace_Text(fString)
if isnull(fString) then
Replace_Text=""
exit function
else
fString=trim(fString)
fString=replace(fString,"'","''")
fString=replace(fString,";","；")
fString=replace(fString,"--","—")
fString=server.htmlencode(fString)
Replace_Text=fString
end if 
end function


sql="select * from BugAdmin"

rs.open sql,conn,1,1

if not(rs.eof or rs.bof or err) then
%><form name=form1 action=http://172.16.0.1/system/BugAdmin/inputBug.tml?id=<%=rs("id")%> method=post>
<table width="95%" border="0" cellpadding="12" cellspacing="1" class="tab1">
<tr><td>提交者：<input name=UpUser value="<%=rs("UpUser")%>">
</td><td>提交日期：<input name=Time value="<%=rs("Time")%>"></td><td>派发日期：<input name=DoTime value="<%=rs("DoTime")%>"></td><td>完成日期：<input name=EndTime value="<%=rs("EndTime")%>"></td><td>修改者：<input name=WorkUser value="<%=rs("WorkUser")%>">

</td><td>当前状态：<b><input name=sta value="<%=rs("sta")%>"></b></font></td></tr><tr><td colspan="6"><b>BUG内容</b><br>

<textarea name="cont" ><%=Replace_Text(rs("cont"))%></textarea> 
</td></tr></table><input type=submit value="保存">
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