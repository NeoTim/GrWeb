<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file=../conn.TML-->
<!--#include file="../ip.inc" --> 
<body background="../bg.jpg" STYLE="background-repeat :repeat-x" onkeydown="if(event.keyCode==13 && event.ctrlKey) if(save_onclick())document.form.submit()">

<p align="center"><strong>�ύ��BUG��ȱ�ݣ�
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
fileDesc="��Ϸ���ƣ�"&request("pname")&chr(13)&chr(10)&"�ύ�����ԣ�"&userip&chr(13)&chr(10)&(fileDesc)
fileDesc=replace(fileDesc,chr(13),"<br>")
conn.execute "insert into BugAdmin(cont,UpUser) values('"&fileDesc&"','"&upuser&"')"
%>
BUG�ύ�ɹ�����л���Ĳ��룬�뷵��<br></br><button onclick=window.close()>�رմ���</button>
 ����
<button onclick="location.href='.'">�ύ����BUG</button>

<%response.end
end if%>
  </strong><br>

<form method=post name="form" onsubmit="return save_onclick()">
 <SCRIPT language=javascript>
function  save_onclick()
{//alert(document.form.Date.Style.backgroundColor);
  //document.form.Content.value=editor.HtmlEdit.document.body.innerHTML;
//alert(document.form.Content.value);

  var strTemp = document.form.Cont.value;
  if (strTemp.length == 0 )
  {
      alert("��BUG����");
      return false;
  }
  else if (document.form.upuser.value.length == 0 )
  {
      alert("δ��д���մ���");
      return false;
  }
 else{return true;}  
 // return false;
}
</SCRIPT>
<TABLE BORDER=0><TR><TD>
���մ���:<input name=upuser><br>
��Ʒ����:<select name=pname>
<option value="��Ϸ">��Ϸ</option>
<option value="��ʱͨѶ���">��ʱͨѶ���</option>
<option value="���취ϵͳ">���취ϵͳ</option>
<option value="��������ϵͳ">��������ϵͳ</option>
<option value="FLASH����">FLASH����</option>
<% set rs=server.createobject("adodb.recordset")
sql="select * from ComList order by ComID"
rs.open sql,conn,1,1
do while not(rs.eof or rs.bof or err)%>
<option value="[<%=rs("ComID")%>]<%=rs("ComName")%>">[<%=rs("ComID")%>]<%=rs("ComName")%></option>
<%rs.movenext
loop
rs.close
set rs=nothing	 
TMLcn_footer%>
<option value="������Ʒ�ͷ���">������Ʒ�ͷ���</option>
</select><BR>
BUG(ȱ��)��ϸ������<br>
<textarea name="Cont"  cols="60" rows="8"></textarea> 

    <br>
 <input type="submit" value="�ύBUG">��
<input type="reset"  value="���">
</form><!--form method=post action="upload.asp" name="form" enctype="multipart/form-data">�ϴ�RAR��<input name=mefile type=file> <input type="submit" value="�ϴ�"></form-->֣�س�ŵ��������޸�BUG��
</TD></TR></TABLE>
 