<%@ Language=VBScript CODEPAGE=936%>

<HTML>
<HEAD>
<TITLE>eWebEditor �� ������ʾ��</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>���� �� <a href="default.asp">ʾ����ҳ</a> &gt; ������ʾ��</b></p>
<p>������ʾ����ν��յ����ύ������HTML���룬����ʾ����</p>

<%
Dim sContent1, i

For i = 1 To Request.Form("content1").Count 
	sContent1 = sContent1 & Request.Form("content1")(i) 
Next 

Response.Write "�༭�������£�<br><br>" & sContent1
Response.Write "<br><br><p><input type=button value=' ���� ' onclick='history.back()'></p>"
%>

</BODY>
</HTML>