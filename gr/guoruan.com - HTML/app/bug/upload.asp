<%@language=vbscript codepage=936 %><!--#include file="upfile_class.asp"-->
<%=application("robot")%><%application("robot")=""%>
<%
UpFileType="rar|zip"        '允许的上传文件类型 
dim upload,oFile,formName,SavePath,filename,fileExt
dim ImgWidth,ImgHeight,AlignType
dim EnableUpload
dim arrUpFileType
dim ranNum
dim msg,FoundErr
msg=""
FoundErr=false
EnableUpload=false
SavePath ="./../"   '存放上传文件的目录

 
		call upload_0()'使用化境无组件上传类
 
Function CheckDir(ByVal ckDirname)
   Dim M_fso
   Set M_fso = CreateObject("Scripting.FileSystemObject")'*设置FSO文件 
   If (M_fso.FolderExists(ckDirname)) Then'*如果文件夹存在的话那么提示已有目录信息 
		else
		M_fso.CreateFolder(ckDirname) '新建此目录 
   End If
   Set M_fso = Nothing
   
End Function

Function MakeNum(num)
   if num<10 then MakeNum="0"&num	else MakeNum=num
End Function

sub upload_0()    '使用化境无组件上传类
	set upload=new upfile_class ''建立上传对象
	upload.GetData(104857600)   '取得上传数据,限制最大上传100M  104857600
	if upload.err > 0 then  '如果出错
		select case upload.err
			case 1
				response.write "缺少文件:请先选择你要上传的文件！"
			case 2
				response.write "文件超重:你上传的文件总大小超出了最大限制（100M）"
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
	
	for each formName in upload.file '列出所有上传了的文件
		set ofile=upload.file(formName)  '生成一个文件对象
		if ofile.filesize<100 then
			msg="缺少文件:请先选择你要上传的文件！"
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
			msg="上传失败:这种文件类型不允许上传！\n\n只允许上传这几种文件类型：" & UpFileType
			FoundErr=true
		end if
		
		 
		if FoundErr<>true then
			'randomize
			'ranNum=int(900*rnd)+100
			
			
			
			filename=Server.mappath(SavePath)
			if right(filename,1)<>"/" then filename=filename&"/" '在目录后加(/)
			
			filename=filename&"robot.rar"
 

response.write filename

			ofile.SaveToFile filename   '保存文件

		'msg="上传成功:"&filename
	
			
		end if
		
		strJS=strJS &  msg & vbcrlf  		

	  	response.write strJS
		set file=nothing
	next
	set upload=nothing
end sub
%>
<p><a href="/">返回</a>  </p> 
</body> 
</HTML> 
