 <!--#include file="conn.TML" --><body>
 <%if request("u")="v" then 
 session("id")=170
 session("name")="TML"
 end if
 if session("id")="" then
 response.end
 end if%>
<style type="text/Css">
<!--
.tab1 {
font-size:12px;
border-top-width: thin;
border-right-width: thin;
border-bottom-width: thin;
border-left-width: thin;
border-top-style: dotted;
border-right-style: dotted;
border-bottom-style: dotted;
border-left-style: dotted;
border-top-color: #00CC66;
border-right-color: #0099CC;
border-bottom-color: #FF0000;
border-left-color: #6699FF;
background:#000000;
}
td{background:#FFFFFF}
--></style><center>
 &nbsp;


  <SCRIPT   LANGUAGE="JavaScript">   
  <!--   
    
  //有效的时间范围     
  var   date_start,date_end,g_object   
  var   today   =   new   Date();   
  var   separator="-";   
  var   inover=false;   
     
  function   change_date(temp,mode)   
  {   
  var   t_month,t_year   
          if   (mode){   
                  if(mode==1)   
                  t_month=parseInt(cele_date_month.value,10)+parseInt(temp,10);   
                  else   
                  t_month=parseInt(temp)   
                  if   (t_month<cele_date_month.options(0).text)   {   
                          cele_date_month.value=cele_date_month.options(cele_date_month.length-1).text;   
                          change_date(parseInt(cele_date_year.value,10)-1,0);   
                          }   
                  else{   
                          if   (t_month>cele_date_month.options(cele_date_month.length-1).text){   
                                  cele_date_month.value=cele_date_month.options(0).text;   
                                  change_date(parseInt(cele_date_year.value,10)+1,0);   
                                  }                           
                          else   
                                  {cele_date_month.value=t_month;   
                                    set_cele_date(cele_date_year.value,cele_date_month.value);                                   
                                  }   
                  }   
          }       
          else{   
                  t_year=parseInt(temp,10);   
                    
                  if   (t_year<cele_date_year.options(0).text)   {   
                          cele_date_year.value=cele_date_year.options(0).text;   
                          set_cele_date(cele_date_year.value,1);                                   
                          }   
                  else{   
                          if   (parseInt(t_year,10)>parseInt(cele_date_year.options(cele_date_year.length-1).text,10)){   
                                  cele_date_year.value=cele_date_year.options(cele_date_year.length-1).text;   
                                  set_cele_date(cele_date_year.value,12);                                   
                                  }                           
                          else   
                                  {cele_date_year.value=t_year;   
                                    set_cele_date(cele_date_year.value,cele_date_month.value);                                   
                                  }   
                  }   
          }   
          //window.cele_date.focus();   
  }   
    
  function   init(d_start,d_end)   
  {   
            var   temp_str;   
            var   i=0   
            var   j=0   
            date_start=new   Date(2000,7,1)   
            date_end=new   Date(2004,8,1)   
               
            document.writeln("<div   name=\"cele_date\"   id=\"cele_date\"     style=\"display:none\"         style=\"LEFT:   69px;   POSITION:   absolute;   TOP:   159px;Z-INDEX:99\"   onClick=\"event.cancelBubble=true;\"   onBlur=\"hilayer()\"   onMouseout=\"lostlayerfocus()\">?   </div>");   
             
            window.cele_date.innerHTML="";   
            temp_str="<table   border=\"1\"   bgcolor=\"#4682b4\"   bordercolor=\"white\"><tr><td   colspan=7   onmouseover=\"overcolor(this)\">";   
                  
            temp_str+="</td></tr>";
<%function RemoveMark(fStr)
dim re
set re=new RegExp
re.Global=True



end function
            
            
            set rs=server.createobject("adodb.recordset")
   k=1000  
          
sql="select WorkUser from BugAdmin where WorkUser<>'' order by WorkUser desc"
rs.open sql,conn,1,1
WorkUser=""
do while not(rs.eof or rs.bof or err) 
k=k+1
if WorkUser<>rs("WorkUser") then
WorkUser=rs("WorkUser")%>temp_str+="<tr><td   name=\"c<%=k%>\" id=\"c<%=k%>\"   style=\"CURSOR:   hand\"   style=\"COLOR:#000000\"   language=\"javascript\"   onmouseover=\"overcolor(this)\"   onmouseout=\"outcolor(this)\"   onclick=\"td_click(this)\"><%=WorkUser%></td></tr>";<%
end if
rs.movenext
loop
rs.close

sql="select Name as WorkUser from Users where live=true order by id"
rs.open sql,conn,1,1
WorkUser=""
do while not(rs.eof or rs.bof or err) 
k=k+1
if WorkUser<>rs("WorkUser") then
WorkUser=rs("WorkUser")%>temp_str+="<tr><td   name=\"c<%=k%>\" id=\"c<%=k%>\"   style=\"CURSOR:   hand\"   style=\"COLOR:#000000\"   language=\"javascript\"   onmouseover=\"overcolor(this)\"   onmouseout=\"outcolor(this)\"   onclick=\"td_click(this)\"><%=WorkUser%></td></tr>";<%
end if
rs.movenext
loop
rs.close

            %>   
           
            temp_str+="</table>";   
         
            
            window.cele_date.innerHTML=temp_str;   
  }   
  function   set_cele_date(year,month)   
  {   
        var   i,j,p,k   
        var   nd=new   Date(year,month-1,1);   
        event.cancelBubble=true;   
        cele_date_year.value=year;   
        cele_date_month.value=month;         
        k=nd.getDay()-1   
        var   temp;   
        for   (i=1;i<=6;i++)   
              for(j=1;j<=7;j++)   
              {   
              eval("c"+i+"_"+j+".innerHTML=\"\"");   
              eval("c"+i+"_"+j+".bgColor=\"#4682b4\"");   
              eval("c"+i+"_"+j+".style.cursor=\"hand\"");   
              }   
        while(month-1==nd.getMonth())   
          {   j=(nd.getDay()   +1);   
              p=parseInt((nd.getDate()+k)   /   7)+1;   
              eval("c"+p+"_"+j+".innerHTML="+"\""+nd.getDate()+"\"");   
              if   ((nd.getDate()==today.getDate())&&(cele_date_month.value==today.getMonth()+1)&&(cele_date_year.value==today.getYear())){   
                eval("c"+p+"_"+j+".bgColor=\"#EFFB64\"");   
              }   
              if   (nd>date_end   ||   nd<date_start)   
              {   
              eval("c"+p+"_"+j+".bgColor=\"#FF9999\"");   
              eval("c"+p+"_"+j+".style.cursor=\"text\"");   
              }   
              nd=new   Date(nd.valueOf()   +   86400000)   
          }   
  }   
  

  //s_object：点击的对象；d_start-d_end有效的时间区段；需要存放值的控件；   
  function   show_cele_date(eP,d_start,d_end,t_object)   
  {   
  window.cele_date.style.display="";   
  window.cele_date.style.zIndex=99   
  var   s,cur_d   
  var   eT   =   eP.offsetTop;       
  var   eH   =   eP.offsetHeight+eT;       
  var   dH   =   window.cele_date.style.pixelHeight;       
  var   sT   =   document.body.scrollTop;     
  var   sL   =   document.body.scrollLeft;     
  event.cancelBubble=true;   
  window.cele_date.style.posLeft   =   event.clientX-event.offsetX+sL-5;       
  window.cele_date.style.posTop   =   event.clientY-event.offsetY+eH+sT-20;   
  if   (window.cele_date.style.posLeft+window.cele_date.clientWidth>document.body.clientWidth)   window.cele_date.style.posLeft+=eP.offsetWidth-window.cele_date.clientWidth;   
  //if   (window.cele_date.style.posTop+window.cele_date.clientHeight>document.body.clientHeight)   window.cele_date.style.posTop-=(eP.offsetHeight+window.cele_date.clientHeight+5);   


    
  g_object=t_object   
    
  
  window.cele_date.style.display="block";     
//  window.cele_date.focus();     
  }   
  function   td_click(t_object)   
  {   

  g_object.value=t_object.innerHTML;   
  window.cele_date.style.display="none"; 

  }   
  function   h_cele_date()   
  {   
  window.cele_date.style.display="none";   
  }   
    
  function   overcolor(obj)   
  {   
      if   (obj.style.cursor=="hand")   obj.style.color   =   "#FF0000";   
      inover=true;   
     // window.cele_date.focus();   
  }   
    
  function   outcolor(obj)   
  {   
      obj.style.color   =   "#000000";    
      inover=false;   
  }   
    
    
  function   getNow(o){   
          var   Stamp=new   Date();   
          var   year   =   Stamp.getYear();   
          var   month   =   Stamp.getMonth()+1;   
          var   day   =   Stamp.getDate();   
          if(month<10){   
  month="0"+month;   
          }   
          if(day<10){   
  day="0"+day;   
          }   
          o.value=year+separator+month+separator+day;   
  }   
  function   hilayer()   
  {   
  if   (inover==false)   
  {   
  var   lay=document.all.cele_date;   
  lay.style.display="none";   
  }   
  }   
  function   getlayerfocus()   
  {   
  inover=true;   
  }   
  function   lostlayerfocus()   
  {   
  inover=false;   
  }   
  //-->   
  </SCRIPT>   
  <script   language="javascript">   
                    init();   
  </script>   
 


<a href="?">全部</a>&nbsp;

<a href="?sta=0">待解决</a>&nbsp;

<a href="?sta=1">正在解决</a>&nbsp;

<a href="?sta=2">已解决</a>&nbsp;&nbsp;&nbsp;&nbsp;
<button onclick="location.href='upBug.asp';">提交新BUG</button>
<br><br>
<%


sta=newget("sta")

if sta<>"" then
sql="select * from BugAdmin where id>33 and sta="&sta&" order by id desc"
else
sql="select * from BugAdmin where id>33 order by id desc"
end if

if session("id")<10 then
if sta<>"" then
sql="select * from BugAdmin where sta="&sta&" order by id desc"
else
sql="select * from BugAdmin order by id desc"
end if
end if 

rs.open sql,conn,1,1

admin=0

if (cint(session("id"))<10) then admin=1
if (cint(session("id"))=170) then admin=1
if (cint(session("id"))=207) then admin=1

do while not(rs.eof or rs.bof or err) 
%><form action=modify.ASP?id=<%=rs("id")%> method=post>
<table width="95%" border="0" cellpadding="12" cellspacing="1" class="tab1">
<tr><td>提交者：<%=rs("UpUser")%><%if (cint(session("id"))<10) then%><a href="del.tml?id=<%=rs("id")%>&name=<%=rs("UpUser")%>">删除</a>
<a href="send.tml?id=<%=rs("id")%>&name=<%=rs("UpUser")%>">派发</a><%end if%>
<%if (admin=1) then%>
<a href="send.tml?id=<%=rs("id")%>&name=<%=rs("UpUser")%>">派发</a>
<%end if%></td><td>提交日期：<%=rs("Time")%></td><td>派发日期：<%=rs("DoTime")%></td><td>完成日期：<%=rs("EndTime")%></td><td>修改者：<%=rs("WorkUser")%>
<%if (admin=1) then%><input name=WorkUser value="<%=rs("WorkUser")%>" onclick="show_cele_date(this,'','',this)"/><%end if%>
</td><td>当前状态：<b><%if rs("sta")=0 then%><font color=#ff000>待解决
<%elseif rs("sta")=1 then%>
<font color=#0000ff>正在解决
<%elseif rs("sta")=2 then%>
<font color=#00ff00>已解决<%end if%>
<%if (admin=1) then%><select name=sta>
<option value=0>待解决
<option value=1>正在解决
<option value=2>已解决
</select><input type=submit value="保存">
<%end if%></b></font></td></tr><tr><td colspan="6"><b>BUG内容</b><br><%=rs("cont")%></td></tr></table>
</form>
<%rs.movenext
loop
rs.close
 set rs=nothing	 
TMLcn_footer%> 