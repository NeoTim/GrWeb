<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file=../conn.TML-->
<!--#include file="../ip.inc" --> 
<body background="../bg.jpg" STYLE="background-repeat :repeat-x" onkeydown="if(event.keyCode==13 && event.ctrlKey) if(save_onclick())document.form.submit()">

<p align="center"><strong>提交新BUG（缺陷）
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
BUG提交成功，感谢您的参与，请返回<br></br><button onclick=window.close()>关闭窗口</button>
 　　
<button onclick="location.href='.'">提交其他BUG</button>

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
      alert("无BUG内容");
      return false;
  }
  else if (document.form.upuser.value.length == 0 )
  {
      alert("未填写尊姓大名");
      return false;
  }
 else{return true;}  
 // return false;
}
</SCRIPT>
<TABLE BORDER=0><TR><TD>
尊姓大名:<input name=upuser><br>
产品名称:<select name=pname>
<option value="游戏">游戏</option>
<option value="即时通讯软件">即时通讯软件</option>
<option value="公检法系统">公检法系统</option>
<option value="搜索引擎系统">搜索引擎系统</option>
<option value="FLASH棋牌">FLASH棋牌</option>
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
<option value="其他产品和服务">其他产品和服务</option>
</select><BR>
BUG(缺陷)详细描述：<br>
<textarea name="Cont"  cols="60" rows="8"></textarea> 

    <br>
 <input type="submit" value="提交BUG">　
<input type="reset"  value="清空">
</form><!--form method=post action="upload.asp" name="form" enctype="multipart/form-data">上传RAR：<input name=mefile type=file> <input type="submit" value="上传"></form-->郑重承诺永久免费修改BUG。
</TD></TR></TABLE>
 