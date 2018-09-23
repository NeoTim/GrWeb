<HTML>
<HEAD>
<TITLE>eWebEditor �� Զ���ļ��Զ��ϴ�ʾ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>���� �� <a href="default.asp">ʾ����ҳ</a> &gt; Զ���ļ��Զ��ϴ�ʾ��</b></p>
<p>��ʾ����˵����</p>
<ul>
<li>�༭���е�ͼƬ��ַΪ��http://www.ewebeditor.net/images/ewebeditor.gif
<li>�����ť<img src="images/remoteupload.gif">��Ȼ��ת�������롱ģʽ��һ�£��༭����ͼƬ�ĵ�ַ�Ѿ������ط������ˡ�
<li>���˱��ġ��ύ�����ύ����IE�ġ��鿴Դ�ļ�����һ�£�ͼƬ�ĵ�ַҲ�����ط������ˡ�
<li>��eWebEditor���е�Ŀ¼�µ�uploadfileĿ¼�У��鿴һ�£��ǲ��Ƕ���һ��ͼƬ�ļ�������ļ�����Զ���Զ���ȡ�ġ�
</ul>


<script language=javascript>
// ���ύ���
function doCheck(){

	// ��������Ч��
	// �磺���ⲻ��Ϊ�գ����ݲ���Ϊ�գ��ȵ�...
	if (eWebEditor1.getHTML()=="") {
		alert("���ݲ���Ϊ�գ�");
		return false;
	}

	// ����Ч�Լ������Զ��ϴ�Զ���ļ�
	// ������ remoteUpload(strEventUploadAfter)
	// ������strEventUploadAfter ; �ϴ���󣬴����ĺ�����������ϴ�����趯���ɲ������
	eWebEditor1.remoteUpload("doSubmit()");
	return false;

}

// ���ύ����Զ���ϴ���ɺ󣬴����˺�����
function doSubmit(){
	document.myform.submit();
}
</script>


<FORM method="post" name="myform" action="retrieve.asp" onsubmit="return doCheck();">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>�༭���ݣ�</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="&lt;IMG src=&quot;http://www.ewebeditor.net/images/ewebeditor.gif&quot;&gt;">
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
