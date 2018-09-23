<%if ((session("name")="") or (session("id")=""))  then
	response.write "<font color=ff0000><h3>您还没有上传权限。</h3></font>"
else'已经登陆%>

<!--#include file=conn.TML-->
<p align="center"><strong>提交新BUG

<%fileDesc=request("Content")

fileDesc=replace(fileDesc,"'","''")

if (fileDesc<>"") then

conn.execute "insert into BugAdmin(cont,UpUser) values('"&fileDesc&"','"&session("name")&"')"

%>
 成功，请返回<button onclick=history.back(1)>返回历史</button>


<button onclick="location.href='list.asp'">返回列表</button>


<%response.end
end if
'enctype="multipart/form-data"%>


  </strong><br>
  
  新BUG原理
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
      alert("无内容");
      return false;
  }
  else if (document.form.title.value.length == 0 )
  {
      alert("无标题");
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
 <input type="submit" value="发布">　
<input type="reset"  value="清空">
</form>

 
<%end if%>