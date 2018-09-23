<HTML>
<HEAD>
<TITLE>eWebEditor �� �ϴ��ļ��ӿ�ʾ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>���� �� <a href="default.asp">ʾ����ҳ</a> &gt; �ϴ��ļ��ӿ�ʾ��</b></p>
<p>ͨ��ʹ������ӿڹ��ܣ������Ի�ȡ������ͨ���༭���ϴ���ͼƬ���ļ����ļ�����·����</p>
<p>�ڱ༭�����ϴ�һ���ļ���ͼƬ����һ��Ч����</p>


<Script Language=JavaScript>
function doChange(objText, objDrop){
	if (!objDrop) return;
	var str = objText.value;
	var arr = str.split("|");
	objDrop.length=0;
	for (var i=0; i<arr.length; i++){
		objDrop.options[i] = new Option(arr[i], arr[i]);
	}
}
</Script>


<FORM method="post" name="myform" action="retrieve.asp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>�༭���ݣ�</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="">
		<IFRAME ID="eWebEditor1" src="../ewebeditor.htm?id=content1&style=coolblue&originalfilename=myText1&savefilename=myText2&savepathfilename=myText3" frameborder="0" scrolling="no" width="550" height="350"></IFRAME>
	</TD>
</TR>
<TR>
	<TD>������originalfilename</TD>
	<TD><input type=text id=myText1 style="width:200px" onchange="doChange(this,myDrop1)">&nbsp;<select id=myDrop1 size=1 style="width:200px"></select></TD>
</TR>
<TR>
	<TD>������savefilename</TD>
	<TD><input type=text id=myText2 style="width:200px" onchange="doChange(this,myDrop2)">&nbsp;<select id=myDrop2 size=1 style="width:200px"></select></TD>
</TR>
<TR>
	<TD>������savepathfilename</TD>
	<TD><input type=text id=myText3 style="width:200px" onchange="doChange(this,myDrop3)">&nbsp;<select id=myDrop3 size=1 style="width:350px"></select></TD>
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
