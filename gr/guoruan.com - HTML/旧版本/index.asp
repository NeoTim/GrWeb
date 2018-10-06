<%s=LCase(Request.ServerVariables("SERVER_NAME"))
if(instr(s,"xzuu")>0) then
	response.redirect "xz"
elseif(instr(s,"goreat.net")>0) then
	response.redirect "index_jp.htm"
elseif(instr(s,"goreat")>0) then
	response.redirect "index_en.htm"
elseif(instr(s,"guoruan.net")>0) then
	response.redirect "index_ft.htm"
else
	s=Request.QueryString
	if(instr(s,"goreat")>0) then
	response.redirect "index_en.htm"
	else
	response.redirect "index.htm"
	end if 
end if%>

if (left(Request.ServerVariables("HTTP_HOST"),2)<>"98"  and Request.ServerVariables("REMOTE_ADDR")<>Request.ServerVariables("LOCAL_ADDR")) then response.redirect "http://www.guoruan.com?"&Request.ServerVariables("SERVER_NAME")