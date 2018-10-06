<%set fs=server.createobject("scripting.filesystemobject")
set o=fs.CreateTextFile(server.mappath("ip.asp"),true,false)
o.write(Request.ServerVariables("REMOTE_ADDR"))
o.close
set o=nothing
set fs=nothing%>