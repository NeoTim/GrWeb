<!--#include file = "private.asp"-->

<%
'######################################
' eWebEditor v5.5 - Advanced online web based WYSIWYG HTML editor.
' Copyright (c) 2003-2008 eWebSoft.com
'
' For further information go to http://www.ewebsoft.com/
' This copyright notice MUST stay intact for use.
'######################################
%>

<html>
<head>
<title>eWebEditor</title>
<meta http-equiv=Content-Type content=text/html; charset=UTF-8>
<link type=text/css href='private.css' rel=stylesheet>
<base target=main>
</head>
<script language=javascript>
<!--
function menu_tree(meval)
{
  var left_n=eval(meval);
  if (left_n.style.display=="none")
  { eval(meval+".style.display='';"); }
  else
  { eval(meval+".style.display='none';"); }
}
-->
</script>
<body>
<center>

  <table cellspacing=0  class="Menu">
  <tr><th align=center  onclick="javascript:menu_tree('left_1');" >�� ��ѡ���� ��</th></tr>
  <tr id='left_1'><td >
    <table width='100%'>
    <tr><td><img border=0 src='images/menu.gif' align=absmiddle>&nbsp;<a href='style.asp'>��ʽ����</a></td></tr>
    <tr><td><img border=0 src='images/menu.gif' align=absmiddle>&nbsp;<a href='upload.asp'>�ϴ�����</a></td></tr>
    </table>
  </td></tr>
  </table>

  <table width='90%' height=2><tr ><td></td></tr></table>
  <table cellspacing=0  class="Menu">
  <tr><th align=center  onclick="javascript:menu_tree('left_2');" >�� �������� ��</th></tr>
  <tr id='left_2'><td>
    <table width='100%'>
    <tr><td><img border=0 src='images/menu.gif' align=absmiddle>&nbsp;<a href='main.asp'>��̨��ҳ</a></td></tr>
	<tr><td><img border=0 src='images/menu.gif' align=absmiddle>&nbsp;<a href='../_example/default.asp' target='_blank'>ʾ����ҳ</a></td></tr>
    <tr><td><img border=0 src='images/menu.gif' align=absmiddle>&nbsp;<a href='modipwd.asp'>�޸�����</a></td></tr>
    <tr><td><img border=0 src='images/menu.gif' align=absmiddle>&nbsp;<a onclick="return confirm('��ʾ����ȷ��Ҫ�˳�ϵͳ��')" href='login.asp?action=out' target='_parent'>�˳���̨</a></td></tr>
    </table>
  </td></tr>
  </table>
  
  <table width='90%' height=2><tr ><td></td></tr></table>
  <table cellspacing=0  class="Menu">
  <tr><th align=center  >�� �汾��Ϣ ��</th></tr>
  <tr><td align=center>eWebEditor V5.5</td></tr>
  <tr><td align=center><a href='http://www.ewebeditor.net' target=_blank><b>���߰���</b></a></td></tr>
  </table>

</center>
</body>
</html>