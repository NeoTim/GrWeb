<%@language=vbscript codepage=936 %><!--#include file="upfile_class.asp"-->
<%=application("robot")%><%application("robot")=""%>
<%
UpFileType="rar|zip"        '������ϴ��ļ����� 
dim upload,oFile,formName,SavePath,filename,fileExt
dim ImgWidth,ImgHeight,AlignType
dim EnableUpload
dim arrUpFileType
dim ranNum
dim msg,FoundErr
msg=""
FoundErr=false
EnableUpload=false
SavePath ="./../"   '����ϴ��ļ���Ŀ¼

 
		call upload_0()'ʹ�û���������ϴ���
 
Function CheckDir(ByVal ckDirname)
   Dim M_fso
   Set M_fso = CreateObject("Scripting.FileSystemObject")'*����FSO�ļ� 
   If (M_fso.FolderExists(ckDirname)) Then'*����ļ��д��ڵĻ���ô��ʾ����Ŀ¼��Ϣ 
		else
		M_fso.CreateFolder(ckDirname) '�½���Ŀ¼ 
   End If
   Set M_fso = Nothing
   
End Function

Function MakeNum(num)
   if num<10 then MakeNum="0"&num	else MakeNum=num
End Function

sub upload_0()    'ʹ�û���������ϴ���
	set upload=new upfile_class ''�����ϴ�����
	upload.GetData(104857600)   'ȡ���ϴ�����,��������ϴ�100M  104857600
	if upload.err > 0 then  '�������
		select case upload.err
			case 1
				response.write "ȱ���ļ�:����ѡ����Ҫ�ϴ����ļ���"
			case 2
				response.write "�ļ�����:���ϴ����ļ��ܴ�С������������ƣ�100M��"
		end select
		response.end
	end if
		
	ImgWidth=trim(upload.form("ImgWidth"))
	ImgHeight=trim(upload.form("ImgHeight"))
	AlignType=trim(upload.form("AlignType"))
	if ImgWidth="" then
		ImgWidth=0
	else
		ImgWidth=Clng(ImgWidth)
	end if
	if ImgHeight="" then
		ImgHeight=0
	else
		ImgHeight=Clng(ImgHeight)
	end if
	if AlignType="" then
		AlignType=0
	else
		AlignType=Clng(AlignType)
	end if
	
	for each formName in upload.file '�г������ϴ��˵��ļ�
		set ofile=upload.file(formName)  '����һ���ļ�����
		if ofile.filesize<100 then
			msg="ȱ���ļ�:����ѡ����Ҫ�ϴ����ļ���"
			FoundErr=True
		end if 

		fileExt=lcase(ofile.FileExt)
		arrUpFileType=split(UpFileType,"|")
		for i=0 to ubound(arrUpFileType)
			if fileEXT=trim(arrUpFileType(i)) then
				EnableUpload=true
				exit for
			end if
		next
		if fileEXT="asp" or fileEXT="asa" or fileEXT="aspx" then
			EnableUpload=false
		end if
		
		if EnableUpload=false then
			msg="�ϴ�ʧ��:�����ļ����Ͳ������ϴ���\n\nֻ�����ϴ��⼸���ļ����ͣ�" & UpFileType
			FoundErr=true
		end if
		
		 
		if FoundErr<>true then
			'randomize
			'ranNum=int(900*rnd)+100
			
			
			
			filename=Server.mappath(SavePath)
			if right(filename,1)<>"/" then filename=filename&"/" '��Ŀ¼���(/)
			
			filename=filename&"robot.rar"
 

response.write filename

			ofile.SaveToFile filename   '�����ļ�

		'msg="�ϴ��ɹ�:"&filename
	
			
		end if
		
		strJS=strJS &  msg & vbcrlf  		

	  	response.write strJS
		set file=nothing
	next
	set upload=nothing
end sub
%>
<p><a href="/">����</a>  </p> 
</body> 
</HTML> 
