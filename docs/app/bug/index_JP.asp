<!--#include file=../conn.TML-->
<!--#include file="../ip.inc" --> 
<html><meta http-equiv="content-type" content="text/html;charset=utf-8">
<p align="center"><strong>Submit a new BUG (defect)
<%fileDesc=request("Cont")
fileDesc=replace(fileDesc,"'","''")
if (fileDesc<>"") then
upuser=request("upuser")
upuser=replace(upuser,"'","")
%>
<%userip = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
If userip = "" Then userip = Request.ServerVariables("REMOTE_ADDR") 
userip=Look_Ip(userip)&"("&userip&")"
%>
<%
fileDesc="游戏名称："&request("pname")&chr(13)&chr(10)&"提交者来自："&userip&chr(13)&chr(10)&(fileDesc)
fileDesc=replace(fileDesc,chr(13),"<br>")
conn.execute "insert into BugAdmin(cont,UpUser) values('"&fileDesc&"','"&upuser&"')"
%>
BUG submitted successfully, thank you for your participation, please return<br></br><button onclick=window.close()>Close window</button>
<button onclick="location.href='index_en.asp'">Submitted to other BUG</button>
<%response.end
end if%>
  </strong><br>

<form method=post name="form" onsubmit="return save_onclick()">
<body onkeydown="if(event.keyCode==13 && event.ctrlKey) if(save_onclick())document.form.submit()">
 <SCRIPT language=javascript>
function  save_onclick()
{//alert(document.form.Date.Style.backgroundColor);
  //document.form.Content.value=editor.HtmlEdit.document.body.innerHTML;
//alert(document.form.Content.value);

  var strTemp = document.form.Cont.value;
  if (strTemp.length == 0 )
  {
      alert("No BUG content");
      return false;
  }
  else if (document.form.upuser.value.length == 0 )
  {
      alert("Not fill in your name");
      return false;
  }
 else{return true;}  
 // return false;
}
</SCRIPT>
<TABLE BORDER=0><TR><TD>
Your name:<input name=upuser><br>
Game name:<select name=pname>
<option value="Gods">Gods</option>
<option value="FLASH Chess Cards Game">FLASH Chess Cards Game</option>
<% set rs=server.createobject("adodb.recordset")
sql="select * from ComList order by ComID"
rs.open sql,conn,1,1
do while not(rs.eof or rs.bof or err)%>
<option value="[<%=rs("ComID")%>]<%=rs("ComNameEN")%>">[<%=rs("ComID")%>]<%=rs("ComNameEN")%></option>
<%rs.movenext
loop
rs.close
set rs=nothing	 
TMLcn_footer%>
</select><BR>
BUG Detailed Description:<br>
<textarea name="Cont"  cols="60" rows="10"></textarea> 
<br><input type="submit" value="submit">
<input type="reset"  value="reset">
</form><br>*For author photo, please email to:<a href="Mailto:Bug@GuoRuan.com">Bug@GuoRuan.com</A>
</TD></TR></TABLE>