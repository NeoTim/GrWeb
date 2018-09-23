<HTML>
<HEAD>
<TITLE>eWebEditor �� �ͻ���APIʾ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>���� �� <a href="default.asp">ʾ����ҳ</a> &gt; �ͻ���APIʾ��</b></p>
<p>��������eWebEditor�ṩ�Ŀͻ���API���Ա༭��ִ�и߼�����������API����μ������ֲᡣ</p>



<FORM method="post" name="myform" action="retrieve.asp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>�༭���ݣ�</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="&lt;p&gt;eWebEditor - ����HTML�༭����HTML���߱༭�ð���&lt;/p&gt;">
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
<TR>
	<TD>HTML���룺</TD>
	<TD><TEXTAREA cols=50 rows=5 id=myTextArea style="width:550px">�����ȡֵ����ť����һ��Ч����</TEXTAREA></TD>
</TR>
<TR>
	<TD colspan=2 align=right>
	<INPUT type=button value="ȡֵ(HTML)" onclick="myTextArea.value=eWebEditor1.getHTML()"> 
	<INPUT type=button value="ȡֵ(���ı�)" onclick="myTextArea.value=eWebEditor1.getText()"> 
	<INPUT type=button value="��ֵ" onclick="eWebEditor1.setHTML('<b>Hello My World!</b>')">
	<INPUT type=button value="��ǰλ�ò���" onclick="eWebEditor1.insertHTML('This is insertHTML function!')">
	<INPUT type=button value="β��׷��" onclick="eWebEditor1.appendHTML('This is appendHTML function!')">
	<br>
	<INPUT type=button value="����״̬" onclick="eWebEditor1.setMode('CODE')">
	<INPUT type=button value="���״̬" onclick="eWebEditor1.setMode('EDIT')">
	<INPUT type=button value="�ı�״̬" onclick="eWebEditor1.setMode('TEXT')">
	<INPUT type=button value="Ԥ��״̬" onclick="eWebEditor1.setMode('VIEW')">
	<br>
	<INPUT type=button value="Ӣ������" onclick="alert(eWebEditor1.getCount(0))">
	<INPUT type=button value="��������" onclick="alert(eWebEditor1.getCount(1))">
	<INPUT type=button value="��Ӣ������(���ļ�1)" onclick="alert(eWebEditor1.getCount(2))">
	<INPUT type=button value="��Ӣ������(���ļ�2)" onclick="alert(eWebEditor1.getCount(3))">
	</TD>
</TR>
</TABLE>
</FORM>


</BODY>
</HTML>