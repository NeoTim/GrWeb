<HTML>
<HEAD>
<TITLE>eWebEditor �� �ⲿ��ʽ���ýӿ�ʾ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>���� �� <a href="default.asp">ʾ����ҳ</a> &gt; �ⲿ��ʽ���ýӿ�ʾ��</b></p>
<p>ͨ��ʹ���ⲿ��ʽ�����ӿڣ������ָ���༭������ʽ��</p>
<p>�����ڰѱ༭������ʽ����Ϊ�����Ӧ��ϵͳ��ͬ��CSS��ʽ�ļ���������֤�˱༭������ʾ��Ч��������Ӧ��ϵͳ�������ʾ��Ч����ȫ��ͬ��</p>
<p>��������ӣ�ָ��extcss=_example/myeditorarea.css��������ڱ༭��������һЩ���ֿ���������Ч����myeditorarea.css�ж��������ͬ�ġ�</p>
<p>ʾ����ʽ�ļ��У�Ĭ������Ϊ��ɫ���Ѷ���ı߾���Ϊ0��ʹ�����롰�س����������롰Shift+�س�����Ч��һ����</p>


<FORM method="post" name="myform" action="retrieve.asp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>�༭���ݣ�</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="&lt;p&gt;&nbsp;&lt;/p&gt;">
		<IFRAME ID="eWebEditor1" src="../ewebeditor.htm?id=content1&style=coolblue&extcss=_example/myeditorarea.css" frameborder="0" scrolling="no" width="550" height="350"></IFRAME>
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