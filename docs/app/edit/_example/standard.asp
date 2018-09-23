<HTML>
<HEAD>
<TITLE>eWebEditor �� ��׼����ʾ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>���� �� <a href="default.asp">ʾ����ҳ</a> &gt; ��׼����ʾ��</b></p>
<p>������ʾ��eWebEditor�ı�׼���÷�����Ҳ����õĵ��÷�����</p>
<p>����ʽʹ��ϵͳ��Ĭ����ʽ(coolblue)����ѵ��ÿ��550px����ѵ��ø߶�350px��</p>


<FORM method="post" name="myform" action="retrieve.asp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>�༭���ݣ�</TD>
	<TD>
		<%
		' �������
		Dim html
		' ��ֵ��������ݿ�ȡֵ
		' html = rs("field")
		html = "<P align=center><FONT color=#ff0000><FONT face='Arial Black' size=7><STRONG>eWeb<FONT color=#0000ff>Editor</FONT><FONT color=#000000><SUP>TM</SUP></FONT></STRONG></FONT></FONT></P><P align=right><FONT style='BACKGROUND-COLOR: #ffff00' color=#ff0000><STRONG>eWebEditor V5.5 for ASP ����������ҵ��</STRONG></FONT></P><P>����ʽΪϵͳĬ����ʽ��coolblue������ѵ��ÿ��550px���߶�350px��</P><P>����һЩ�߼����ù��ܵ����ӣ������ͨ����������ʾ����ҳ�鿴��</P><P><B><TABLE borderColor=#ff9900 cellSpacing=2 cellPadding=3 align=center bgColor=#ffffff border=1><TBODY><TR><TD bgColor=#00ff00><STRONG>������Щ���ݣ���û�д�����ʾ��˵����װ�Ѿ���ȷ��ɣ�</STRONG></TD></TR></TBODY></TABLE></B></P>"
		' �ַ�ת������Ҫ��Ե�˫���ŵ������ַ�
		' ֻ���ڸ��༭����ֵʱ���б�Ҫʹ�ô��ַ�ת����������⼰������ʾ������Ҫʹ�ô˺���
		html = Server.HtmlEncode(html)
		%>
		<INPUT type="hidden" name="content1" value="<%=html%>">
		<IFRAME ID="eWebEditor1" src="../ewebeditor.htm?id=content1&style=coolblue" frameborder="0" scrolling="no" width="550" height="350"></IFRAME>
	</TD>
</TR>
<TR>
	<TD colspan=2 align=right>
	<INPUT type=submit value="�ύ"> 
	<INPUT type=reset value="����"> 
	<INPUT type=button value="�鿴Դ�ļ�" onclick="location.replace('view-source:'+location)"> 
	</TD>
</TR>
</TABLE>
</FORM>


</BODY>
</HTML>