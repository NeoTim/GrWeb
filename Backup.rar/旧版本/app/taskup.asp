<%if ((session("name")="") or (session("id")=""))  then
	response.write "<font color=ff0000><h3>����û���ϴ�Ȩ�ޡ�</h3></font>"
else'�Ѿ���½%>

<!--#include file=conn.TML-->
<p align="center"><strong>�ύ��BUG

<%fileDesc=request("Content")

fileDesc=replace(fileDesc,"'","''")

if (fileDesc<>"") then

conn.execute "insert into BugAdmin(cont,UpUser) values('"&fileDesc&"','"&session("name")&"')"

%>
 �ɹ����뷵��<button onclick=history.back(1)>������ʷ</button>


<button onclick="location.href='list.asp'">�����б�</button>


<%response.end
end if
'enctype="multipart/form-data"%>


  </strong><br>
  
  ��BUGԭ��
<form method=post name="form" onsubmit="return save_onclick()">
<body onkeydown="if(event.keyCode==13 && event.ctrlKey) if(save_onclick())document.form.submit()">

 <SCRIPT language=javascript>
function  save_onclick()
{//alert(document.form.Date.Style.backgroundColor);
  document.form.Content.value=editor.HtmlEdit.document.body.innerHTML;

//alert(document.form.Content.value);

  var strTemp = document.form.Content.value;
  if (strTemp.length == 0 )
  {
      alert("������");
      return false;
  }
  else if (document.form.title.value.length == 0 )
  {
      alert("�ޱ���");
      return false;
  }
 else{return true;}  
 // return false;
}

</SCRIPT>
 
<div align=left>
 
<textarea name="Content" style="display:none"></textarea> <br>  
 <iframe ID='eWebEditor1' src='edit/ewebeditor.htm?id=Content&style=tml650' frameborder=0 scrolling=no width='650' HEIGHT='400'></iframe>

    <br>
 <input type="submit" value="����">��
<input type="reset"  value="���">
</form>

 
<%end if%>