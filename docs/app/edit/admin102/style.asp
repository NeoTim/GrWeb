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
<%
Dim sStyleID, sStyleName, sFixWidth, sSkin, sStyleUploadDir, sStyleWidth, sStyleHeight, sStyleMemo, sStyleStateFlag, sStyleDetectFromWord, sStyleInitMode, sStyleBaseUrl, sStyleUploadObject, sStyleAutoDir, sStyleBaseHref, sStyleContentPath, sStyleAutoRemote, sStyleShowBorder, sStyleAllowBrowse
Dim sSLTFlag, sSLTMinSize, sSLTOkSize, sSYWZFlag, sSYText, sSYFontColor, sSYFontSize, sSYFontName, sSYPicPath, sSLTSYObject, sSLTSYExt, sSYWZMinWidth, sSYShadowColor, sSYShadowOffset, sSYWZMinHeight, sSYWZPosition, sSYWZTextWidth, sSYWZTextHeight, sSYWZPaddingH, sSYWZPaddingV, sSYTPFlag, sSYTPMinWidth, sSYTPMinHeight, sSYTPPosition, sSYTPPaddingH, sSYTPPaddingV, sSYTPImageWidth, sSYTPImageHeight, sSYTPOpacity, sCusDirFlag
Dim sStyleFileExt, sStyleFlashExt, sStyleImageExt, sStyleMediaExt, sStyleRemoteExt, sStyleLocalExt, sStyleFileSize, sStyleFlashSize, sStyleImageSize, sStyleMediaSize, sStyleRemoteSize, sStyleLocalSize
Dim sToolBarID, sToolBarName, sToolBarOrder, sToolBarButton
Dim sSBCode, sSBEdit, sSBText, sSBView
Dim sEnterMode, sAreaCssMode
Dim nStyleID
sPosition = sPosition & "��ʽ����"
If sAction = "STYLEPREVIEW" Then
Call InitStyle()
Call ShowStylePreview()
Response.End
End If
Call Header()
Call ShowPosition()
Call Content()
Call Footer()
Sub Content()
Select Case sAction
Case "UPDATECONFIG"
Call DoUpdateConfig()
Case "COPY"
Call InitStyle()
Call DoCopy()
Call ShowStyleList()
Case "STYLEADD"
Call ShowStyleForm("ADD")
Case "STYLESET"
Call InitStyle()
Call ShowStyleForm("SET")
Case "STYLEADDSAVE"
Call CheckStyleForm()
Call DoStyleAddSave()
Case "STYLESETSAVE"
Call CheckStyleForm()
Call DoStyleSetSave()
Case "STYLEDEL"
Call InitStyle()
Call DoStyleDel()
Call ShowStyleList()
Case "CODE"
Call InitStyle()
Call ShowStyleCode()
Case "TOOLBAR"
Call InitStyle()
Call ShowToolBarList()
Case "TOOLBARADD"
Call InitStyle()
Call DoToolBarAdd()
Call ShowToolBarList()
Case "TOOLBARMODI"
Call InitStyle()
Call DoToolBarModi()
Call ShowToolBarList()
Case "TOOLBARDEL"
Call InitStyle()
Call DoToolBarDel()
Call ShowToolBarList()
Case "BUTTONSET"
Call InitStyle()
Call InitToolBar()
Call ShowButtonList()
Case "BUTTONSAVE"
Call InitStyle()
Call InitToolBar()
Call DoButtonSave()
Case Else
Call ShowStyleList()
End Select
End Sub
Sub ShowPosition()
Response.Write "<table border=0 cellspacing=1 align=center class=navi>" & _
"<tr><th>" & sPosition & "</th></tr>" & _
"<tr><td align=center>[<a href='?'>������ʽ�б�</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href='?action=styleadd'>�½�һ��ʽ</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href='?action=updateconfig'>����������ʽ��ǰ̨�����ļ�</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href='#' onclick='history.back()'>����ǰһҳ</a>]</td></tr>" & _
"</table><br>"
End Sub
Sub ShowMessage(str)
Response.Write "<table border=0 cellspacing=1 align=center class=list><tr><td>" & str & "</td></tr></table><br>"
End Sub
Sub ShowStyleList()
Call ShowMessage("<b class=blue>����Ϊ��ǰ������ʽ�б�</b>")
Response.Write "<table border=0 cellpadding=0 cellspacing=1 class=list align=center>" & _
"<form action='?action=del' method=post name=myform>" & _
"<tr align=center>" & _
"<th width='10%'>��ʽ��</th>" & _
"<th width='10%'>��ѿ��</th>" & _
"<th width='10%'>��Ѹ߶�</th>" & _
"<th width='45%'>˵��</th>" & _
"<th width='25%'>����</th>" & _
"</tr>"
Dim sManage, i, aCurrStyle
For i = 1 To Ubound(aStyle)
aCurrStyle = Split(aStyle(i), "|||")
sManage = "<a href='?action=stylepreview&id=" & i & "' target='_blank'>Ԥ��</a>|<a href='?action=code&id=" & i & "'>����</a>|<a href='?action=styleset&id=" & i & "'>����</a>|<a href='?action=toolbar&id=" & i & "'>������</a>|<a href='?action=copy&id=" & i & "'>����</a>|<a href='?action=styledel&id=" & i & "' onclick=""return confirm('��ʾ����ȷ��Ҫɾ������ʽ��')"">ɾ��</a>"
Response.Write "<tr align=center>" & _
"<td>" & outHTML(aCurrStyle(0)) & "</td>" & _
"<td>" & aCurrStyle(4) & "</td>" & _
"<td>" & aCurrStyle(5) & "</td>" & _
"<td align=left>" & outHTML(aCurrStyle(26)) & "</td>" & _
"<td>" & sManage & "</td>" & _
"</tr>"
Next
Response.Write "</table><br>"
Call ShowMessage("<b class=blue>��ʾ��</b>�����ͨ����������һ��ʽ�Դﵽ�����½���ʽ��Ŀ�ġ�")
End Sub
Sub DoCopy()
Dim i, b, sNewID, sNewName
b = False
i = 0
Do While b = False
i = i + 1
sNewName = sStyleName & i
If StyleName2ID(sNewName) = -1 Then
b = True
End If
Loop
Dim nNewStyleID
nNewStyleID = Ubound(aStyle) + 1
Redim Preserve aStyle(nNewStyleID)
aStyle(nNewStyleID) = sNewName & Mid(aStyle(nStyleID), Len(sStyleName)+1)
Dim nToolbarNum, nNewToolbarID, aCurrToolbar
nToolbarNum = Ubound(aToolbar)
For i = 1 To nToolbarNum
aCurrToolbar = Split(aToolbar(i), "|||")
If aCurrToolbar(0) = sStyleID Then
nNewToolbarID = Ubound(aToolbar) + 1
Redim Preserve aToolbar(nNewToolbarID)
aToolbar(nNewToolbarID) = nNewStyleID & "|||" & aCurrToolbar(1) & "|||" & aCurrToolbar(2) & "|||" & aCurrToolbar(3)
End If
Next
Call WriteConfig()
Call WriteStyle(nNewStyleID)
Call GoUrl("?")
End Sub
Function StyleName2ID(str)
Dim i
StyleName2ID = -1
For i = 1 To UBound(aStyle)
If Lcase(Split(aStyle(i), "|||")(0)) = Lcase(str) Then
StyleName2ID = i
Exit Function
End If
Next
End Function
Sub ShowStyleForm(sFlag)
Dim s_Title, s_Action
Dim s_FormStateFlag, s_FormDetectFromWord, s_FormInitMode, s_FormBaseUrl, s_FormUploadObject, s_FormAutoDir, s_FormAutoRemote, s_FormShowBorder, s_FormSLTFlag, s_FormSYWZFlag, s_FormSLTSYObject, s_FormAllowBrowse, s_FormSYTPFlag, s_FormSYWZPosition, s_FormSYTPPosition, s_FormCusDirFlag
Dim s_FormSBCode, s_FormSBEdit, s_FormSBView, s_FormSBText
Dim s_FormEnterMode, s_FormAreaCssMode
If sFlag = "ADD" Then
sStyleID = ""
sStyleName = ""
sFixWidth = ""
sSkin = "office2003"
sStyleUploadDir = "uploadfile/"
sStyleBaseHref = ""
sStyleContentPath = ""
sStyleWidth = "550"
sStyleHeight = "350"
sStyleMemo = ""
s_Title = "������ʽ"
s_Action = "StyleAddSave"
sStyleFileExt = "rar|zip|exe|doc|xls|chm|hlp"
sStyleFlashExt = "swf"
sStyleImageExt = "gif|jpg|jpeg|bmp"
sStyleMediaExt = "rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov"
sStyleRemoteExt = "gif|jpg|bmp"
sStyleFileSize = "500"
sStyleFlashSize = "100"
sStyleImageSize = "100"
sStyleMediaSize = "100"
sStyleRemoteSize = "100"
sStyleStateFlag = "1"
sSBCode = "1"
sSBEdit = "1"
sSBText = "1"
sSBView = "1"
sEnterMode = "1"
sAreaCssMode = "0"
sStyleAutoRemote = "1"
sStyleShowBorder = "0"
sStyleAllowBrowse = "0"
sStyleUploadObject = "0"
sStyleAutoDir = "0"
sStyleDetectFromWord = "1"
sStyleInitMode = "EDIT"
sStyleBaseUrl = "1"
sSLTFlag = "0"
sSLTMinSize = "300"
sSLTOkSize = "120"
sSYWZFlag = "0"
sSYText = "��Ȩ����..."
sSYFontColor = "000000"
sSYFontSize = "12"
sSYFontName = "����"
sSYPicPath = ""
sSLTSYObject = "0"
sSLTSYExt = "bmp|jpg|jpeg|gif"
sSYWZMinWidth = "100"
sSYShadowColor = "FFFFFF"
sSYShadowOffset = "1"
sStyleLocalExt = "gif|jpg|bmp|wmz"
sStyleLocalSize = "100"
sSYWZMinHeight = "100"
sSYWZPosition = "1"
sSYWZTextWidth = "66"
sSYWZTextHeight = "17"
sSYWZPaddingH = "5"
sSYWZPaddingV = "5"
sSYTPFlag = "0"
sSYTPMinWidth = "100"
sSYTPMinHeight = "100"
sSYTPPosition = "1"
sSYTPPaddingH = "5"
sSYTPPaddingV = "5"
sSYTPImageWidth = "88"
sSYTPImageHeight = "31"
sSYTPOpacity = "1"
sCusDirFlag = "0"
Else
sStyleName = inHTML(sStyleName)
sSkin = inHTML(sSkin)
sStyleUploadDir = inHTML(sStyleUploadDir)
sStyleBaseHref = inHTML(sStyleBaseHref)
sStyleContentPath = inHTML(sStyleContentPath)
sStyleMemo = inHTML(sStyleMemo)
sSYText = inHTML(sSYText)
sSYFontColor = inHTML(sSYFontColor)
sSYFontSize = inHTML(sSYFontSize)
sSYFontName = inHTML(sSYFontName)
sSYPicPath = inHTML(sSYPicPath)
s_Title = "������ʽ"
s_Action = "StyleSetSave"
End If
s_FormStateFlag = InitCheckBox("d_stateflag", "1", sStyleStateFlag)
s_FormSBCode = InitCheckBox("d_sbcode", "1", sSBCode)
s_FormSBEdit = InitCheckBox("d_sbedit", "1", sSBEdit)
s_FormSBText = InitCheckBox("d_sbtext", "1", sSBText)
s_FormSBView = InitCheckBox("d_sbview", "1", sSBView)
s_FormEnterMode = InitSelect("d_entermode", Split("Enter����<P>��Shift+Enter����<BR>|Enter����<BR>��Shift+Enter����<P>", "|"), Split("1|2", "|"), sEnterMode, "", "")
s_FormAreaCssMode = InitSelect("d_areacssmode", Split("����ģʽ|Word����ģʽ", "|"), Split("0|1", "|"), sAreaCssMode, "", "")
s_FormAutoRemote = InitSelect("d_autoremote", Split("�Զ��ϴ�|���Զ��ϴ�", "|"), Split("1|0", "|"), sStyleAutoRemote, "", "")
s_FormShowBorder = InitSelect("d_showborder", Split("Ĭ����ʾ|Ĭ�ϲ���ʾ", "|"), Split("1|0", "|"), sStyleShowBorder, "", "")
s_FormAllowBrowse = InitSelect("d_allowbrowse", Split("��,����|��,�ر�", "|"), Split("1|0", "|"), sStyleAllowBrowse, "", "")
s_FormUploadObject = InitSelect("d_uploadobject", Split("������ϴ���|ASPUpload�ϴ����|SA-FileUp�ϴ����|LyfUpload�ϴ����", "|"), Split("0|1|2|3", "|"), sStyleUploadObject, "", "")
s_FormAutoDir = InitSelect("d_autodir", Split("��ʹ��|��Ŀ¼|����Ŀ¼|������Ŀ¼", "|"), Split("0|1|2|3", "|"), sStyleAutoDir, "", "")
s_FormDetectFromWord = InitSelect("d_detectfromword", Split("�Զ��������ʾ|���Զ����", "|"), Split("1|0", "|"), sStyleDetectFromWord, "", "")
s_FormInitMode = InitSelect("d_initmode", Split("����ģʽ|�༭ģʽ|�ı�ģʽ|Ԥ��ģʽ", "|"), Split("CODE|EDIT|TEXT|VIEW", "|"), sStyleInitMode, "", "")
s_FormBaseUrl = InitSelect("d_baseurl", Split("���·��|���Ը�·��|����ȫ·��|վ�����ȫ·��", "|"), Split("0|1|2|3", "|"), sStyleBaseUrl, "", "")
s_FormSLTFlag = InitSelect("d_sltflag", Split("ʹ��|��ʹ��", "|"), Split("1|0", "|"), sSLTFlag, "", "")
s_FormSYWZFlag = InitSelect("d_sywzflag", Split("��ʹ��|ʹ��|ǰ̨�û�����", "|"), Split("0|1|2", "|"), sSYWZFlag, "", "")
s_FormSLTSYObject = InitSelect("d_sltsyobject", Split("AspJpegͼ�����", "|"), Split("0", "|"), sSLTSYObject, "", "")
s_FormSYTPFlag = InitSelect("d_sytpflag", Split("��ʹ��|ʹ��|ǰ̨�û�����", "|"), Split("0|1|2", "|"), sSYTPFlag, "", "")
s_FormSYWZPosition = InitSelect("d_sywzposition", Split("����|����|����|����|����|����|����|����|����", "|"), Split("1|2|3|4|5|6|7|8|9", "|"), sSYWZPosition, "", "")
s_FormSYTPPosition = InitSelect("d_sytpposition", Split("����|����|����|����|����|����|����|����|����", "|"), Split("1|2|3|4|5|6|7|8|9", "|"), sSYTPPosition, "", "")
s_FormCusDirFlag = InitSelect("d_cusdirflag", Split("����|����", "|"), Split("0|1", "|"), sCusDirFlag, "", "")
Response.Write "<table border=0 cellpadding=0 cellspacing=1 align=center class=form>" & _
"<form action='?action=" & s_Action & "&id=" & sStyleID & "' method=post name=myform onsubmit='return checkStyleSetForm(this)'>" & _
"<tr><th colspan=4>&nbsp;&nbsp;" & s_Title & "������Ƶ������ɿ�˵������*��Ϊ�����</th></tr>" & _
"<tr><td width='15%'>��ʽ���ƣ�</td><td width='35%'><input type=text class=input size=20 name=d_name title='���ô���ʽ�����֣���Ҫ���������' value=""" & sStyleName & """> <span class=red>*</span></td><td width='15%'>��ʼģʽ��</td><td width='35%'>" & s_FormInitMode & " <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>�޿�ģʽ��ȣ�</td><td width='35%'><input type=text class=input size=20 name=d_fixwidth title='��ձ�ʾ�����ã����������磺500px' value=""" & sFixWidth & """></td><td width='15%'>����Ƥ��Ŀ¼��</td><td width='35%'><input type=text class=input size=15 name=d_skin title='��Ž���Ƥ���ļ���Ŀ¼����������skin��' value=""" & sSkin & """> <select size=1 id=d_skin_drop onchange='this.form.d_skin.value=this.value'><option>-ϵͳ�Դ�-</option><option value='blue1'>blue1</option><option value='blue2'>blue2</option><option value='green1'>green1</option><option value='light1'>light1</option><option value='office2000'>office2000</option><option value='office2003'>office2003</option><option value='officexp'>officexp</option><option value='red1'>red1</option><option value='vista1'>vista1</option><option value='yellow1'>yellow1</option></select> <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>��ѿ�ȣ�</td><td width='35%'><input type=text class=input name=d_width size=20 title='�������Ч���Ŀ�ȣ�������' value='" & sStyleWidth & "'> <span class=red>*</span></td><td width='15%'>��Ѹ߶ȣ�</td><td width='35%'><input type=text class=input name=d_height size=20 title='�������Ч���ĸ߶ȣ�������' value='" & sStyleHeight & "'> <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>��ʾ״̬������ť��</td><td width='35%'>" & s_FormStateFlag & "״̬�� " & s_FormSBCode & "���� " & s_FormSBEdit & "�༭ " & s_FormSBText & "�ı� " & s_FormSBView & "Ԥ��<span class=red>*</span></td><td width='15%'>Wordճ����</td><td width='35%'>" & s_FormDetectFromWord & " <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>Զ���ļ���</td><td width='35%'>" & s_FormAutoRemote & " <span class=red>*</span></td><td width='15%'>ָ�����룺</td><td width='35%'>" & s_FormShowBorder & " <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>�س�����ģʽ��</td><td width='35%'>" & s_FormEnterMode & " <span class=red>*</span></td><td width='15%'>�༭��CSSģʽ��</td><td width='35%'>" & s_FormAreaCssMode & " <span class=red>*</span></td></tr>" & _
"<tr><td>��ע˵����</td><td colspan=3><input type=text name=d_memo size=90 title='����ʽ��˵�����������ڵ���' value=""" & sStyleMemo & """></td></tr>" & _
"<tr><td colspan=4><span class=red>&nbsp;&nbsp;&nbsp;�ϴ�������ã��������˵������û��ֲᣩ��</span></td></tr>" & _
"<tr><td width='15%'>�ϴ������</td><td width='35%'>" & s_FormUploadObject & " <span class=red>*</span></td><td width='15%'>�������Զ�Ŀ¼��</td><td width='35%'>" & s_FormAutoDir & " <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>�ϴ��ļ������</td><td width='35%'>" & s_FormAllowBrowse & " <span class=red>*</span></td><td width='15%'>�Զ��ϴ�·���ӿڣ�</td><td width='35%'>" & s_FormCusDirFlag & "</td></tr>" & _
"<tr><td width='15%'>·��ģʽ��</td><td width='35%'>" & s_FormBaseUrl & " <span class=red>*</span> <a href='#baseurl'>˵��</a></td><td width='15%'>�ϴ�·����</td><td width='35%'><input type=text class=input size=20 name=d_uploaddir title='�ϴ��ļ������·�������eWebEditor��Ŀ¼�ļ���·��' value=""" & sStyleUploadDir & """> <span class=red>*</span></td></tr>" & _
"<tr><td width='15%'>��ʾ·����</td><td width='35%'><input type=text class=input size=20 name=d_basehref title='��ʾ����ҳ�����·����������&quot;/&quot;��ͷ' value=""" & sStyleBaseHref & """></td><td width='15%'>����·����</td><td width='35%'><input type=text class=input size=20 name=d_contentpath title='ʵ�ʱ����������е�·���������ʾ·����·����������&quot;/&quot;��ͷ' value=""" & sStyleContentPath & """></td></tr>" & _
"<tr><td colspan=4><span class=red>&nbsp;&nbsp;&nbsp;�����ϴ��ļ����ͼ��ļ���С���ã��ļ���С��λΪKB��0��ʾ��������</span></td></tr>" & _
"<tr><td width='15%'>ͼƬ���ͣ�</td><td width='35%'><input type=text class=input name=d_imageext size=20 title='����ͼƬ��ص��ϴ�' value='" & sStyleImageExt & "'></td><td width='15%'>ͼƬ���ƣ�</td><td width='35%'><input type=text class=input name=d_imagesize size=20 title='�����ͣ���λKB' value='" & sStyleImageSize & "'>KB</td></tr>" & _
"<tr><td width='15%'>Flash���ͣ�</td><td width='35%'><input type=text class=input name=d_flashext size=20 title='���ڲ���Flash����' value='" & sStyleFlashExt & "'></td><td width='15%'>Flash���ƣ�</td><td width='35%'><input type=text class=input name=d_flashsize size=20 title='�����ͣ���λKB' value='" & sStyleFlashSize & "'>KB</td></tr>" & _
"<tr><td width='15%'>ý�����ͣ�</td><td width='35%'><input type=text class=input name=d_mediaext size=20 title='���ڲ���ý���ļ�' value='" & sStyleMediaExt & "'></td><td width='15%'>ý�����ƣ�</td><td width='35%'><input type=text class=input name=d_mediasize size=20 title='�����ͣ���λKB' value='" & sStyleMediaSize & "'>KB</td></tr>" & _
"<tr><td width='15%'>�������ͣ�</td><td width='35%'><input type=text class=input name=d_fileext size=20 title='���ڲ��븽��' value='" & sStyleFileExt & "'></td><td width='15%'>�������ƣ�</td><td width='35%'><input type=text class=input name=d_filesize size=20 title='�����ͣ���λKB' value='" & sStyleFileSize & "'>KB</td></tr>" & _
"<tr><td width='15%'>Զ�����ͣ�</td><td width='35%'><input type=text class=input name=d_remoteext size=20 title='�����Զ��ϴ�Զ���ļ�' value='" & sStyleRemoteExt & "'></td><td width='15%'>Զ�����ƣ�</td><td width='35%'><input type=text class=input name=d_remotesize size=20 title='�����ͣ���λKB' value='" & sStyleRemoteSize & "'>KB</td></tr>" & _
"<tr><td width='15%'>�������ͣ�</td><td width='35%'><input type=text class=input name=d_localext size=20 title='�����Զ��ϴ������ļ�' value='" & sStyleLocalExt & "'></td><td width='15%'>�������ƣ�</td><td width='35%'><input type=text class=input name=d_localsize size=20 title='�����ͣ���λKB' value='" & sStyleLocalSize & "'>KB</td></tr>" & _
"<tr><td colspan=4><span class=red>&nbsp;&nbsp;&nbsp;����ͼ��ˮӡ������ã�</span></td></tr>" & _
"<tr><td width='15%'>ͼ�δ��������</td><td width='35%'>" & s_FormSLTSYObject & "</td><td width='15%'>����ͼ����չ����</td><td width='35%'><input type=text name=d_sltsyext size=20 class=input value=""" & sSLTSYExt & """></td></tr>" & _
"<tr><td width='15%'>����ͼʹ��״̬��</td><td width='35%'>" & s_FormSLTFlag & "</td><td width='15%'>����ͼ����������</td><td width='35%'><input type=text name=d_sltminsize size=20 class=input title='ͼ�εĳ���ֻ�дﵽ����С����Ҫ��ʱ�Ż���������ͼ��������' value='" & sSLTMinSize & "'>px</td></tr>" & _
"<tr><td width='15%'>����ͼ���ɳ��ȣ�</td><td width='35%'><input type=text name=d_sltoksize size=20 class=input title='���ɵ�����ͼ����ֵ��������' value='" & sSLTOkSize & "'>px</td><td width='15%'>&nbsp;</td><td width='35%'>&nbsp;</td></tr>" & _
"<tr><td width='15%'>����ˮӡʹ��״̬��</td><td width='35%'>" & s_FormSYWZFlag & "</td><td width='15%'>����ˮӡ����������</td><td width='35%'>��:<input type=text name=d_sywzminwidth size=4 class=input title='ͼ�εĿ��ֻ�дﵽ����С���Ҫ��ʱ�Ż�����ˮӡ��������' value='" & sSYWZMinWidth & "'>px&nbsp; ��:<input type=text name=d_sywzminheight size=4 class=input title='ͼ�εĸ߶�ֻ�дﵽ����С�߶�Ҫ��ʱ�Ż�����ˮӡ��������' value='" & sSYWZMinHeight & "'>px</td></tr>" & _
"<tr><td width='15%'>����ˮӡ���ݣ�</td><td width='35%'><input type=text name=d_sytext size=20 class=input title='��ʹ������ˮӡʱ����������' value=""" & sSYText & """></td><td width='15%'>����ˮӡ������ɫ��</td><td width='35%'><input type=text name=d_syfontcolor size=20 class=input title='��ʹ������ˮӡʱ���ֵ���ɫ' value=""" & sSYFontColor & """></td></tr>" & _
"<tr><td width='15%'>����ˮӡ��Ӱ��ɫ��</td><td width='35%'><input type=text name=d_syshadowcolor size=20 class=input title='��ʹ������ˮӡʱ��������Ӱ��ɫ' value=""" & sSYShadowColor & """></td><td width='15%'>����ˮӡ��Ӱ��С��</td><td width='35%'><input type=text name=d_syshadowoffset size=20 class=input title='��ʹ������ˮӡʱ���ֵ���Ӱ��С' value=""" & sSYShadowOffset & """>px</td></tr>" & _
"<tr><td width='15%'>����ˮӡ�����С��</td><td width='35%'><input type=text name=d_syfontsize size=20 class=input title='��ʹ������ˮӡʱ���ֵ������С' value=""" & sSYFontSize & """>px</td><td width='15%'>����ˮӡ�������ƣ�</td><td width='35%'><input type=text name=d_syfontname size=20 class=input title='��ʹ������ˮӡʱ���ֵ�������' value=""" & sSYFontName & """></td></tr>" & _
"<tr><td width='15%'>����ˮӡλ�ã�</td><td width='35%'>" & s_FormSYWZPosition & "</td><td width='15%'>����ˮӡ�߾ࣺ</td><td width='35%'>����:<input type=text name=d_sywzpaddingh size=4 class=input title='����ʱ����Ϊ��߾࣬����ʱ����Ϊ�ұ߾࣬������' value='" & sSYWZPaddingH & "'>px&nbsp; ����:<input type=text name=d_sywzpaddingv size=4 class=input title='����ʱ����Ϊ�ϱ߾࣬����ʱ����Ϊ�±߹�������' value='" & sSYWZPaddingV & "'>px</td></tr>" & _
"<tr><td width='15%'>����ˮӡ����ռλ��</td><td width='35%'>��:<input type=text name=d_sywztextwidth size=4 class=input title='ˮӡ���ֵ�ռλ��ȣ��������������С�����õ�Ч��ȷ����������' value='" & sSYWZTextWidth & "'>px&nbsp; ��:<input type=text name=d_sywztextheight size=4 class=input title='ˮӡ���ֵ�ռλ�߶ȣ��������������С�����õ�Ч��ȷ����������' value='" & sSYWZTextHeight & "'>px&nbsp; <input type=button value='�����' onclick='doCheckWH(1)'></td><td width='15%'></td><td width='35%'></td></tr>" & _
"<tr><td width='15%'>ͼƬˮӡʹ��״̬��</td><td width='35%'>" & s_FormSYTPFlag & "</td><td width='15%'>ͼƬˮӡ����������</td><td width='35%'>��:<input type=text name=d_sytpminwidth size=4 class=input title='ͼ�εĿ��ֻ�дﵽ����С���Ҫ��ʱ�Ż�����ˮӡ��������' value='" & sSYTPMinWidth & "'>px&nbsp; ��:<input type=text name=d_sytpminheight size=4 class=input title='ͼ�εĸ߶�ֻ�дﵽ����С�߶�Ҫ��ʱ�Ż�����ˮӡ��������' value='" & sSYTPMinHeight & "'>px</td></tr>" & _
"<tr><td width='15%'>ͼƬˮӡλ�ã�</td><td width='35%'>" & s_FormSYTPPosition & "</td><td width='15%'>ͼƬˮӡ�߾ࣺ</td><td width='35%'>����:<input type=text name=d_sytppaddingh size=4 class=input title='����ʱ����Ϊ��߾࣬����ʱ����Ϊ�ұ߾࣬������' value='" & sSYTPPaddingH & "'>px&nbsp; ����:<input type=text name=d_sytppaddingv size=4 class=input title='����ʱ����Ϊ�ϱ߾࣬����ʱ����Ϊ�±߹�������' value='" & sSYTPPaddingV & "'>px</td></tr>" & _
"<tr><td width='15%'>ͼƬˮӡͼƬ·����</td><td width='35%'><input type=text name=d_sypicpath size=20 class=input title='��ʹ��ͼƬˮӡʱͼƬ��·��' value=""" & sSYPicPath & """></td><td width='15%'>ͼƬˮӡ͸���ȣ�</td><td width='35%'><input type=text name=d_sytpopacity size=20 class=input title='0��1������֣���0.5��ʾ��͸��' value=""" & sSYTPOpacity & """></td></tr>" & _
"<tr><td width='15%'>ͼƬˮӡͼƬռλ��</td><td width='35%'>��:<input type=text name=d_sytpimagewidth size=4 class=input title='ˮӡͼƬ�Ŀ�ȣ�������' value='" & sSYTPImageWidth & "'>px&nbsp; ��:<input type=text name=d_sytpimageheight size=4 class=input title='ˮӡͼƬ�ĸ߶ȣ�������' value='" & sSYTPImageHeight & "'>px&nbsp; <input type=button value='�����' onclick='doCheckWH(2)'></td><td width='15%'></td><td width='35%'></td></tr>" & _
"<tr><td width='15%'>ˮӡ��߼������</td><td width='85%' colspan=3><span id=tdPreview></span></td></tr>" & _
"<tr><td align=center colspan=4><input type=submit value='  �ύ  ' align=absmiddle>&nbsp;<input type=reset name=btnReset value='  ����  '></td></tr>" & _
"</form>" & _
"</table><br>"
Dim sMsg
sMsg = "<a name=baseurl></a><p><span class=blue><b>·��ģʽ����˵����</b></span><br>" & _
"<b>���·����</b>ָ���е�����ϴ����Զ������ļ�·�����༭����""UploadFile/...""��""../UploadFile/...""��ʽ���֣���ʹ�ô�ģʽʱ����ʾ·��������·�������ʾ·��������""/""��ͷ�ͽ�β������·�������в�����""/""��ͷ��<br>" & _
"<b>���Ը�·����</b>ָ���е�����ϴ����Զ������ļ�·�����༭����""/eWebEditor/UploadFile/...""������ʽ���֣���ʹ�ô�ģʽʱ����ʾ·��������·�������<br>" & _
"<b>����ȫ·����</b>ָ���е�����ϴ����Զ������ļ�·�����༭����""http://xxx.xxx.xxx/eWebEditor/UploadFile/...""������ʽ���֣���ʹ�ô�ģʽʱ����ʾ·��������·�������<br>" & _
"<b>վ�����ȫ·����</b>��ʹ�ô�ģʽʱ���ϴ�·��������ʵ������·�����磺""c:\xxx\""����ʾ·��Ϊ�գ�����·��������""http""��ͷ��</p>"
Call ShowMessage(sMsg)
End Sub
Sub InitStyle()
Dim b, aCurrStyle
b = False
sStyleID = Trim(Request("id"))
If IsNumeric(sStyleID) = True Then
nStyleID = Clng(sStyleID)
If nStyleID <= Ubound(aStyle) Then
aCurrStyle = Split(aStyle(nStyleID), "|||")
sStyleName = aCurrStyle(0)
sFixWidth = aCurrStyle(1)
sSkin = aCurrStyle(2)
sStyleUploadDir = aCurrStyle(3)
sStyleBaseHref = aCurrStyle(22)
sStyleContentPath = aCurrStyle(23)
sStyleWidth = aCurrStyle(4)
sStyleHeight = aCurrStyle(5)
sStyleMemo = aCurrStyle(26)
sStyleFileExt = aCurrStyle(6)
sStyleFlashExt = aCurrStyle(7)
sStyleImageExt = aCurrStyle(8)
sStyleMediaExt = aCurrStyle(9)
sStyleRemoteExt = aCurrStyle(10)
sStyleFileSize = aCurrStyle(11)
sStyleFlashSize = aCurrStyle(12)
sStyleImageSize = aCurrStyle(13)
sStyleMediaSize = aCurrStyle(14)
sStyleRemoteSize = aCurrStyle(15)
sStyleStateFlag = aCurrStyle(16)
sSBCode = aCurrStyle(62)
sSBEdit = aCurrStyle(63)
sSBText = aCurrStyle(64)
sSBView = aCurrStyle(65)
sEnterMode = aCurrStyle(66)
sAreaCssMode = aCurrStyle(67)
sStyleAutoRemote = aCurrStyle(24)
sStyleShowBorder = aCurrStyle(25)
sStyleUploadObject = aCurrStyle(20)
sStyleAutoDir = aCurrStyle(21)
sStyleDetectFromWord = aCurrStyle(17)
sStyleInitMode = aCurrStyle(18)
sStyleBaseUrl = aCurrStyle(19)
sSLTFlag = aCurrStyle(29)
sSLTMinSize = aCurrStyle(30)
sSLTOkSize = aCurrStyle(31)
sSYWZFlag = aCurrStyle(32)
sSYText = aCurrStyle(33)
sSYFontColor = aCurrStyle(34)
sSYFontSize = aCurrStyle(35)
sSYFontName = aCurrStyle(36)
sSYPicPath = aCurrStyle(37)
sSLTSYObject = aCurrStyle(38)
sSLTSYExt = aCurrStyle(39)
sSYWZMinWidth = aCurrStyle(40)
sSYShadowColor = aCurrStyle(41)
sSYShadowOffset = aCurrStyle(42)
sStyleAllowBrowse = aCurrStyle(43)
sStyleLocalExt = aCurrStyle(44)
sStyleLocalSize = aCurrStyle(45)
sSYWZMinHeight = aCurrStyle(46)
sSYWZPosition = aCurrStyle(47)
sSYWZTextWidth = aCurrStyle(48)
sSYWZTextHeight = aCurrStyle(49)
sSYWZPaddingH = aCurrStyle(50)
sSYWZPaddingV = aCurrStyle(51)
sSYTPFlag = aCurrStyle(52)
sSYTPMinWidth = aCurrStyle(53)
sSYTPMinHeight = aCurrStyle(54)
sSYTPPosition = aCurrStyle(55)
sSYTPPaddingH = aCurrStyle(56)
sSYTPPaddingV = aCurrStyle(57)
sSYTPImageWidth = aCurrStyle(58)
sSYTPImageHeight = aCurrStyle(59)
sSYTPOpacity = aCurrStyle(60)
sCusDirFlag = aCurrStyle(61)
b = True
End If
End If
If b = False Then
GoError "��Ч����ʽID�ţ���ͨ��ҳ���ϵ����ӽ��в�����"
End If
End Sub
Sub CheckStyleForm()
sStyleName = Trim(Request("d_name"))
sFixWidth = Trim(Request("d_fixwidth"))
sSkin = Trim(Request("d_skin"))
sStyleUploadDir = Trim(Request("d_uploaddir"))
sStyleBaseHref = Trim(Request("d_basehref"))
sStyleContentPath = Trim(Request("d_contentpath"))
sStyleWidth = Trim(Request("d_width"))
sStyleHeight = Trim(Request("d_height"))
sStyleMemo = Trim(Request("d_memo"))
sStyleImageExt = Trim(Request("d_imageext"))
sStyleFlashExt = Trim(Request("d_flashext"))
sStyleMediaExt = Trim(Request("d_mediaext"))
sStyleRemoteExt = Trim(Request("d_remoteext"))
sStyleFileExt = Trim(Request("d_fileext"))
sStyleImageSize = Trim(Request("d_imagesize"))
sStyleFlashSize = Trim(Request("d_flashsize"))
sStyleMediaSize = Trim(Request("d_mediasize"))
sStyleRemoteSize = Trim(Request("d_remotesize"))
sStyleFileSize = Trim(Request("d_filesize"))
sStyleStateFlag = Trim(Request("d_stateflag"))
sSBCode = Trim(Request("d_sbcode"))
sSBEdit = Trim(Request("d_sbedit"))
sSBText = Trim(Request("d_sbtext"))
sSBView = Trim(Request("d_sbview"))
sEnterMode = Trim(Request("d_entermode"))
sAreaCssMode = Trim(Request("d_areacssmode"))
sStyleAutoRemote = Trim(Request("d_autoremote"))
sStyleShowBorder = Trim(Request("d_showborder"))
sStyleUploadObject = Trim(Request("d_uploadobject"))
sStyleAutoDir = Trim(Request("d_autodir"))
sStyleDetectFromWord = Trim(Request("d_detectfromword"))
sStyleInitMode = Trim(Request("d_initmode"))
sStyleBaseUrl = Trim(Request("d_baseurl"))
sSLTFlag = Trim(Request("d_sltflag"))
sSLTMinSize = Trim(Request("d_sltminsize"))
sSLTOkSize = Trim(Request("d_sltoksize"))
sSYWZFlag = Trim(Request("d_sywzflag"))
sSYText = Trim(Request("d_sytext"))
sSYFontColor = Trim(Request("d_syfontcolor"))
sSYFontSize = Trim(Request("d_syfontsize"))
sSYFontName = Trim(Request("d_syfontname"))
sSYPicPath = Trim(Request("d_sypicpath"))
sSLTSYObject = Trim(Request("d_sltsyobject"))
sSLTSYExt = Trim(Request("d_sltsyext"))
sSYWZMinWidth = Trim(Request("d_sywzminwidth"))
sSYShadowColor = Trim(Request("d_syshadowcolor"))
sSYShadowOffset = Trim(Request("d_syshadowoffset"))
sStyleAllowBrowse = Trim(Request("d_allowbrowse"))
sStyleLocalExt = Trim(Request("d_localext"))
sStyleLocalSize = Trim(Request("d_localsize"))
sSYWZMinHeight = Trim(Request("d_sywzminheight"))
sSYWZPosition = Trim(Request("d_sywzposition"))
sSYWZTextWidth = Trim(Request("d_sywztextwidth"))
sSYWZTextHeight = Trim(Request("d_sywztextheight"))
sSYWZPaddingH = Trim(Request("d_sywzpaddingh"))
sSYWZPaddingV = Trim(Request("d_sywzpaddingv"))
sSYTPFlag = Trim(Request("d_sytpflag"))
sSYTPMinWidth = Trim(Request("d_sytpminwidth"))
sSYTPMinHeight = Trim(Request("d_sytpminheight"))
sSYTPPosition = Trim(Request("d_sytpposition"))
sSYTPPaddingH = Trim(Request("d_sytppaddingh"))
sSYTPPaddingV = Trim(Request("d_sytppaddingv"))
sSYTPImageWidth = Trim(Request("d_sytpimagewidth"))
sSYTPImageHeight = Trim(Request("d_sytpimageheight"))
sSYTPOpacity = Trim(Request("d_sytpopacity"))
sCusDirFlag = Trim(Request("d_cusdirflag"))
End Sub
Sub DoStyleAddSave()
If StyleName2ID(sStyleName) <> -1 Then
GoError "����ʽ���Ѿ����ڣ�������һ����ʽ����"
End If
Dim nNewStyleID
nNewStyleID = Ubound(aStyle) + 1
Redim Preserve aStyle(nNewStyleID)
aStyle(nNewStyleID) = sStyleName & "|||" & sFixWidth & "|||" & sSkin & "|||" & sStyleUploadDir & "|||" & sStyleWidth & "|||" & sStyleHeight & "|||" & sStyleFileExt & "|||" & sStyleFlashExt & "|||" & sStyleImageExt & "|||" & sStyleMediaExt & "|||" & sStyleRemoteExt & "|||" & sStyleFileSize & "|||" & sStyleFlashSize & "|||" & sStyleImageSize & "|||" & sStyleMediaSize & "|||" & sStyleRemoteSize & "|||" & sStyleStateFlag & "|||" & sStyleDetectFromWord & "|||" & sStyleInitMode & "|||" & sStyleBaseUrl & "|||" & sStyleUploadObject & "|||" & sStyleAutoDir & "|||" & sStyleBaseHref & "|||" & sStyleContentPath & "|||" & sStyleAutoRemote & "|||" & sStyleShowBorder & "|||" & sStyleMemo & "|||||||||" & sSLTFlag & "|||" & sSLTMinSize & "|||" & sSLTOkSize & "|||" & sSYWZFlag & "|||" & sSYText & "|||" & sSYFontColor & "|||" & sSYFontSize & "|||" & sSYFontName & "|||" & sSYPicPath & "|||" & sSLTSYObject & "|||" & sSLTSYExt & "|||" & sSYWZMinWidth & "|||" & sSYShadowColor & "|||" & sSYShadowOffset & "|||" & sStyleAllowBrowse & "|||" & sStyleLocalExt & "|||" & sStyleLocalSize & "|||" & sSYWZMinHeight & "|||" & sSYWZPosition & "|||" & sSYWZTextWidth & "|||" & sSYWZTextHeight & "|||" & sSYWZPaddingH & "|||" & sSYWZPaddingV & "|||" & sSYTPFlag & "|||" & sSYTPMinWidth & "|||" & sSYTPMinHeight & "|||" & sSYTPPosition & "|||" & sSYTPPaddingH & "|||" & sSYTPPaddingV & "|||" & sSYTPImageWidth & "|||" & sSYTPImageHeight & "|||" & sSYTPOpacity & "|||" & sCusDirFlag  & "|||" & sSBCode  & "|||" & sSBEdit  & "|||" & sSBText  & "|||" & sSBView & "|||" & sEnterMode & "|||" & sAreaCssMode
Call WriteConfig()
Call WriteStyle(nNewStyleID)
Call ShowMessage("<b><span class=red>��ʽ���ӳɹ���</span></b><li><a href='?action=toolbar&id=" & nNewStyleID & "'>���ô���ʽ�µĹ�����</a>")
End Sub
Sub DoUpdateConfig()
Dim i
Call WriteConfig()
For i = 1 To UBound(aStyle)
Call WriteStyle(i)
Next
Call ShowMessage("<b><span class=red>������ʽ��ǰ̨�����ļ����²����ɹ���</span></b><li><a href='?'>����������ʽ�б�</a>")
End Sub
Sub DoStyleSetSave()
Dim n, s_OldStyleName
sStyleID = Trim(Request("id"))
If IsNumeric(sStyleID) = True Then
n = StyleName2ID(sStyleName)
If CStr(n) <> sStyleID And n <> -1 Then
GoError "����ʽ���Ѿ����ڣ�������һ����ʽ����"
End If
If Clng(sStyleID) < 1 And Clng(sStyleID)>UBound(aStyle) Then
GoError "��Ч����ʽID�ţ���ͨ��ҳ���ϵ����ӽ��в�����"
End If
s_OldStyleName = Split(aStyle(Clng(sStyleID)), "|||")(0)
aStyle(Clng(sStyleID)) = sStyleName & "|||" & sFixWidth & "|||" & sSkin & "|||" & sStyleUploadDir & "|||" & sStyleWidth & "|||" & sStyleHeight & "|||" & sStyleFileExt & "|||" & sStyleFlashExt & "|||" & sStyleImageExt & "|||" & sStyleMediaExt & "|||" & sStyleRemoteExt & "|||" & sStyleFileSize & "|||" & sStyleFlashSize & "|||" & sStyleImageSize & "|||" & sStyleMediaSize & "|||" & sStyleRemoteSize & "|||" & sStyleStateFlag & "|||" & sStyleDetectFromWord & "|||" & sStyleInitMode & "|||" & sStyleBaseUrl & "|||" & sStyleUploadObject & "|||" & sStyleAutoDir & "|||" & sStyleBaseHref & "|||" & sStyleContentPath & "|||" & sStyleAutoRemote & "|||" & sStyleShowBorder & "|||" & sStyleMemo & "|||||||||" & sSLTFlag & "|||" & sSLTMinSize & "|||" & sSLTOkSize & "|||" & sSYWZFlag & "|||" & sSYText & "|||" & sSYFontColor & "|||" & sSYFontSize & "|||" & sSYFontName & "|||" & sSYPicPath & "|||" & sSLTSYObject & "|||" & sSLTSYExt & "|||" & sSYWZMinWidth & "|||" & sSYShadowColor & "|||" & sSYShadowOffset & "|||" & sStyleAllowBrowse & "|||" & sStyleLocalExt & "|||" & sStyleLocalSize & "|||" & sSYWZMinHeight & "|||" & sSYWZPosition & "|||" & sSYWZTextWidth & "|||" & sSYWZTextHeight & "|||" & sSYWZPaddingH & "|||" & sSYWZPaddingV & "|||" & sSYTPFlag & "|||" & sSYTPMinWidth & "|||" & sSYTPMinHeight & "|||" & sSYTPPosition & "|||" & sSYTPPaddingH & "|||" & sSYTPPaddingV & "|||" & sSYTPImageWidth & "|||" & sSYTPImageHeight & "|||" & sSYTPOpacity & "|||" & sCusDirFlag  & "|||" & sSBCode  & "|||" & sSBEdit  & "|||" & sSBText  & "|||" & sSBView & "|||" & sEnterMode & "|||" & sAreaCssMode
Else
GoError "��Ч����ʽID�ţ���ͨ��ҳ���ϵ����ӽ��в�����"
End If
Call WriteConfig()
If LCase(s_OldStyleName) <> LCase(sStyleName) Then
Call DeleteFile(s_OldStyleName)
End If
Call WriteStyle(Clng(sStyleID))
Call ShowMessage("<b><span class=red>��ʽ�޸ĳɹ���</span></b><li><a href='?action=stylepreview&id=" & sStyleID & "' target='_blank'>Ԥ������ʽ</a><li><a href='?action=toolbar&id=" & sStyleID & "'>���ô���ʽ�µĹ�����</a><li><a href='?action=styleset&id=" & sStyleID & "'>�������ô���ʽ</a>")
End Sub
Sub DoStyleDel()
aStyle(Clng(sStyleID)) = ""
Call WriteConfig()
Call DeleteFile(sStyleName)
Call GoUrl("?")
End Sub
Sub ShowStylePreview()
Response.Write "<html><head>" & _
"<title>��ʽԤ��</title>" & _
"<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>" & _
"</head><body>" & _
"<input type=hidden name=content1  value=''>" & _
"<iframe ID='eWebEditor1' src='../ewebeditor.htm?id=content1&style=" & sStyleName & "' frameborder=0 scrolling=no width='" & sStyleWidth & "' HEIGHT='" & sStyleHeight & "'></iframe>" & _
"</body></html>"
End Sub
Sub ShowStyleCode()
Response.Write "<table border=0 cellspacing=1 align=center class=list>" & _
"<tr><th>��ʽ��" & outHTML(sStyleName) & "������ѵ��ô������£�����XXX��ʵ�ʹ����ı�������޸ģ���</th></tr>" & _
"<tr><td><textarea rows=5 cols=65 style='width:100%'><IFRAME ID=""eWebEditor1"" SRC=""ewebeditor.htm?id=XXX&style=" & sStyleName & """ FRAMEBORDER=""0"" SCROLLING=""no"" WIDTH=""" & sStyleWidth & """ HEIGHT=""" & sStyleHeight & """></IFRAME></textarea></td></tr>" & _
"</table>"
End Sub
Sub ShowToolBarList()
Call ShowMessage("<b class=blue>��ʽ��" & outHTML(sStyleName) & "���µĹ���������</b>")
Dim s_AddForm, s_ModiForm, i, aCurrToolbar
Dim nMaxOrder
nMaxOrder = 0
For i = 1 To UBound(aToolbar)
aCurrToolbar = Split(aToolbar(i), "|||")
If aCurrToolbar(0) = sStyleID Then
If Clng(aCurrToolbar(3)) > nMaxOrder Then
nMaxOrder = Clng(aCurrToolbar(3))
End If
End If
Next
nMaxOrder = nMaxOrder + 1
s_AddForm = "<hr width='80%' align=center size=1><table border=0 cellpadding=4 cellspacing=0 align=center>" & _
"<form action='?id=" & sStyleID & "&action=toolbaradd' name='addform' method=post>" & _
"<tr><td>����������<input type=text name=d_name size=20 class=input value='������" & nMaxOrder & "'> ����ţ�<input type=text name=d_order size=5 value='" & nMaxOrder & "' class=input> <input type=submit name=b1 value='����������'></td></tr>" & _
"</form></table><hr width='80%' align=center size=1>"
Dim s_Manage
s_ModiForm = "<form action='?id=" & sStyleID & "&action=toolbarmodi' name=modiform method=post>" & _
"<table border=0 cellpadding=0 cellspacing=1 align=center class=form>" & _
"<tr align=center><th>ID</th><th>��������</th><th>�����</th><th>����</th></tr>"
For i = 1 To UBound(aToolbar)
aCurrToolbar = Split(aToolbar(i), "|||")
If aCurrToolbar(0) = sStyleID Then
s_Manage = "<a href='?id=" & sStyleID & "&action=buttonset&toolbarid=" & i & "'>��ť����</a>"
s_Manage = s_Manage & "|<a href='?id=" & sStyleID & "&action=toolbardel&delid=" & i & "'>ɾ��</a>"
s_ModiForm = s_ModiForm & "<tr align=center>" & _
"<td>" & i & "</td>" & _
"<td><input type=text name='d_name" & i & "' value=""" & inHTML(aCurrToolbar(2)) & """ size=30 class=input></td>" & _
"<td><input type=text name='d_order" & i & "' value='" & aCurrToolbar(3) & "' size=5 class=input></td>" & _
"<td>" & s_Manage & "</td>" & _
"</tr>"
End If
Next
s_ModiForm = s_ModiForm & "<tr><td colspan=4 align=center><input type=submit name=b1 value='  �޸�  '></td></tr></table></form>"
Response.Write s_AddForm & s_ModiForm
End Sub
Sub DoToolBarAdd()
Dim s_Name, s_Order
s_Name = Trim(Request("d_name"))
s_Order = Trim(Request("d_order"))
If s_Name = "" Then
GoError "������������Ϊ�գ�"
End If
If IsNumeric(s_Order) = False Then
GoError "��Ч�Ĺ���������ţ�����ű���Ϊ���֣�"
End If
Dim nToolbarNum
nToolbarNum = Ubound(aToolbar) + 1
Redim Preserve aToolbar(nToolbarNum)
aToolbar(nToolbarNum) = sStyleID & "||||||" & s_Name & "|||" & s_Order
Call WriteConfig()
Call WriteStyle(Clng(sStyleID))
Response.Write "<script language=javascript>alert(""��������" & outHTML(s_Name) & "�����Ӳ����ɹ���"");</script>"
Call GoUrl("?action=toolbar&id=" & sStyleID)
End Sub
Sub DoToolBarModi()
Dim s_Name, s_Order, i, aCurrToolbar
For i = 1 To UBound(aToolbar)
aCurrToolbar = Split(aToolbar(i), "|||")
If aCurrToolbar(0) = sStyleID Then
s_Name = Trim(Request("d_name" & i))
s_Order = Trim(Request("d_order" & i))
If s_Name = "" Or IsNumeric(s_Order) = False Then 
aCurrToolbar(0) = ""
s_Name = ""
End If
aToolbar(i) = aCurrToolbar(0) & "|||" & aCurrToolbar(1) & "|||" & s_Name & "|||" & s_Order
End If
Next
Call WriteConfig()
Call WriteStyle(Clng(sStyleID))
Response.Write "<script language=javascript>alert('�������޸Ĳ����ɹ���');</script>"
Call GoUrl("?action=toolbar&id=" & sStyleID)
End Sub
Sub DoToolBarDel()
Dim s_DelID
s_DelID = Trim(Request("delid"))
If IsNumeric(s_DelID) = True Then
aToolbar(Clng(s_DelID)) = ""
Call WriteConfig()
Call WriteStyle(Clng(sStyleID))
Response.Write "<script language=javascript>alert('��������ID��" & s_DelID & "��ɾ�������ɹ���');</script>"
Call GoUrl("?action=toolbar&id=" & sStyleID)
End If
End Sub
Sub InitToolBar()
Dim b, aCurrToolbar, nToolbarID
b = False
sToolBarID = Trim(Request("toolbarid"))
If IsNumeric(sToolBarID) = True Then
If Clng(sToolBarID) <= UBound(aToolbar) And Clng(sToolBarID) > 0 Then
aCurrToolbar = Split(aToolbar(Clng(sToolbarID)), "|||")
sToolBarName = aCurrToolbar(2)
sToolBarOrder = aCurrToolbar(3)
sToolBarButton = aCurrToolbar(1)
b = True
End If
End If
If b = False Then
GoError "��Ч�Ĺ�����ID�ţ���ͨ��ҳ���ϵ����ӽ��в�����"
End If
End Sub
Sub ShowButtonList()
Call ShowMessage("<b class=blue>��ǰ��ʽ��<span class=red>" & outHTML(sStyleName) & "</span>&nbsp;&nbsp;��ǰ��������<span class=red>" & outHTML(sToolBarName) & "</span></b>")
%>
<script language='javascript' src='../js/buttons.js'></script>
<script language='javascript' src='../js/zh-cn.js'></script>
<table border=0 cellpadding=5 cellspacing=0 align=center>
<form action='?action=buttonsave&id=<%=sStyleID%>&toolbarid=<%=sToolBarID%>' method=post name=myform>
<tr align=center><td>��ѡ��ť</td><td></td><td>��ѡ��ť</td><td></td></tr>
<tr>
<td><DIV id=div1 style="BORDER-RIGHT: 1.5pt inset; PADDING-RIGHT: 0px; BORDER-TOP: 1.5pt inset; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; OVERFLOW: auto; BORDER-LEFT: 1.5pt inset; WIDTH: 250px; PADDING-TOP: 0px; BORDER-BOTTOM: 1.5pt inset; HEIGHT: 350px; BACKGROUND-COLOR: white"></DIV></td>
<td><input type=button name=b1 value=' �� ' onclick='Add()'><br><br><input type=button name=b1 value=' �� ' onclick='Del()'></td>
<td><DIV id=div2 style="BORDER-RIGHT: 1.5pt inset; PADDING-RIGHT: 0px; BORDER-TOP: 1.5pt inset; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; OVERFLOW: auto; BORDER-LEFT: 1.5pt inset; WIDTH: 250px; PADDING-TOP: 0px; BORDER-BOTTOM: 1.5pt inset; HEIGHT: 350px; BACKGROUND-COLOR: white"></DIV></td>
<td><input type=button name=b3 value='��' onclick='Up()'><br><br><br><input type=button name=b4 value='��' onclick='Down()'></td>
</tr>
<input type=hidden name='d_button' value='<%=sToolBarButton%>'>
<tr><td colspan=4 align=right><input type=submit name=b value=' �������� '></td></tr>
</form>
</table>
<script language=javascript>
initButtonOptions("<%=sSkin%>");
</script>
<%
Call ShowMessage("<b class=blue>��ʾ��</b>�����ͨ������Ctrl����Shift�������ٶ�ѡ����������ָ�����ϡ�˫�����������ӻ�ɾ�������ѡ�������ťͬʱ���ƻ����Ʋ�����")
End Sub
Sub DoButtonSave()
Dim s_Button, nToolBarID, aCurrToolbar
s_Button = Trim(Request("d_button"))
nToolBarID = Clng(sToolBarID)
aCurrToolbar = Split(aToolbar(nToolBarID), "|||")
aToolbar(nToolBarID) = aCurrToolbar(0) & "|||" & s_Button & "|||" & aCurrToolbar(2) & "|||" & aCurrToolbar(3)
Call WriteConfig()
Call WriteStyle(Clng(sStyleID))
Call ShowMessage("<b><span class=red>��������ť���ñ���ɹ���</span></b><li><a href='?action=stylepreview&id=" & sStyleID & "' target='_blank'>Ԥ������ʽ</a><li><a href='?action=toolbar&id=" & sStyleID & "'>���ع���������</a><li><a href='?action=buttonset&id=" & sStyleID & "&toolbarid=" & sToolBarID & "'>�������ô˹������µİ�ť</a>")
End Sub
Sub WriteStyle(n_StyleID)
Dim sConfig
Dim aTmpStyle
sConfig = ""
aTmpStyle = Split(aStyle(n_StyleID), "|||")
sConfig = sConfig & "config.FixWidth = """ & aTmpStyle(1) & """;" & Vbcrlf
If aTmpStyle(19) = "3" Then
sConfig = sConfig & "config.UploadUrl = """ & aTmpStyle(23) & """;" & Vbcrlf
Else
sConfig = sConfig & "config.UploadUrl = """ & aTmpStyle(3) & """;" & Vbcrlf
End If
sConfig = sConfig & "config.InitMode = """ & aTmpStyle(18) & """;" & Vbcrlf
sConfig = sConfig & "config.AutoDetectPasteFromWord = """ & aTmpStyle(17) & """;" & Vbcrlf
sConfig = sConfig & "config.BaseUrl = """ & aTmpStyle(19) & """;" & Vbcrlf
sConfig = sConfig & "config.BaseHref = """ & aTmpStyle(22) & """;" & Vbcrlf
sConfig = sConfig & "config.AutoRemote = """ & aTmpStyle(24) & """;" & Vbcrlf
sConfig = sConfig & "config.ShowBorder = """ & aTmpStyle(25) & """;" & Vbcrlf
sConfig = sConfig & "config.StateFlag = """ & aTmpStyle(16) & """;" & Vbcrlf
sConfig = sConfig & "config.SBCode = """ & aTmpStyle(62) & """;" & Vbcrlf
sConfig = sConfig & "config.SBEdit = """ & aTmpStyle(63) & """;" & Vbcrlf
sConfig = sConfig & "config.SBText = """ & aTmpStyle(64) & """;" & Vbcrlf
sConfig = sConfig & "config.SBView = """ & aTmpStyle(65) & """;" & Vbcrlf
sConfig = sConfig & "config.EnterMode = """ & aTmpStyle(66) & """;" & Vbcrlf
sConfig = sConfig & "config.Skin = """ & aTmpStyle(2) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowBrowse = """ & aTmpStyle(43) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowImageSize = """ & aTmpStyle(13) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowFlashSize = """ & aTmpStyle(12) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowMediaSize = """ & aTmpStyle(14) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowFileSize = """ & aTmpStyle(11) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowRemoteSize = """ & aTmpStyle(15) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowLocalSize = """ & aTmpStyle(45) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowImageExt = """ & aTmpStyle(8) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowFlashExt = """ & aTmpStyle(7) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowMediaExt = """ & aTmpStyle(9) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowFileExt = """ & aTmpStyle(6) & """;" & Vbcrlf
sConfig = sConfig & "config.AllowRemoteExt = """ & aTmpStyle(10) & """;" & Vbcrlf
sConfig = sConfig & "config.AreaCssMode = """ & aTmpStyle(67) & """;" & Vbcrlf
sConfig = sConfig & "config.SYWZFlag = """ & aTmpStyle(32) & """;" & Vbcrlf
sConfig = sConfig & "config.SYTPFlag = """ & aTmpStyle(52) & """;" & Vbcrlf
sConfig = sConfig & "config.ServerExt = ""asp"";" & vbCrLf
sConfig = sConfig & Vbcrlf
sConfig = sConfig & "config.Toolbars = [" & Vbcrlf
Dim s_Order, s_ID, n, aTmpToolbar
s_Order = ""
s_ID = ""
For n = 1 To UBound(aToolbar)
If aToolbar(n) <> "" Then
aTmpToolbar = Split(aToolbar(n), "|||")
If aTmpToolbar(0) = CStr(n_StyleID) Then
If s_ID <> "" Then
s_ID = s_ID & "|"
s_Order = s_Order & "|"
End If
s_ID = s_ID & CStr(n)
s_Order = s_Order & aTmpToolbar(3)
End If
End If
Next
Dim a_ID, a_Order, aTmpButton, i
If s_ID <> "" Then
a_ID = Split(s_ID, "|")
a_Order = Split(s_Order, "|")
For n = 0 To UBound(a_Order)
a_Order(n) = Clng(a_Order(n))
a_ID(n) = Clng(a_ID(n))
Next
a_ID = Sort(a_ID, a_Order)
For n = 0 To UBound(a_ID)
aTmpToolbar = Split(aToolbar(a_ID(n)), "|||")
aTmpButton = Split(aTmpToolbar(1), "|")
If n >0 Then
sConfig = sConfig & "," & Vbcrlf
End If
sConfig = sConfig & Chr(9) & "["
For i = 0 To UBound(aTmpButton)
If i > 0 Then
sConfig = sConfig & ", "
End If
sConfig = sConfig & """" & aTmpButton(i) & """"
Next
sConfig = sConfig & "]"
Next
End If
sConfig = sConfig & Vbcrlf & "];" & Vbcrlf
Call WriteFile("../style/" & LCase(aTmpStyle(0)) & ".js", sConfig)
End Sub
Sub DeleteFile(s_StyleName)
On Error Resume Next
Dim oFSO, sMapFileName
Set oFSO = Server.CreateObject("Scripting.FileSystemObject")
sMapFileName = Server.MapPath("../style/" & LCase(s_StyleName) & ".js")
If oFSO.FileExists(sMapFileName) Then
oFSO.DeleteFile(sMapFileName)
End If
Set oFSO = Nothing
End Sub
Sub GoUrl(url)
Response.Write "<script language=javascript>location.href=""" & url & """;</script>"
Response.End
End Sub
%>