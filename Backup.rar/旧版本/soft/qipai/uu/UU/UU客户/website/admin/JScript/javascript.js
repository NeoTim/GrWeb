function AllChecked()
{
    var obj = document.form1.sel;
	if(obj != null)
	{
		if(obj.length == undefined)
		{
			obj.checked = true;
		}
		else
		{
			for(var ii=0; ii < obj.length; ii++)
			{
				obj[ii].checked = true;
			}
		}
	}
}

function Upload_OnChange(obj,input,state)
{
    if(obj.value!='')
    {
        document.getElementById(input).value = obj.value;
        document.getElementById(state).style.display = 'block';
    }
    else
    {
        document.getElementById(input).value = '';
        document.getElementById(state).style.display = 'none';
    }
}
function Upload_Clear(e,fileupload,txtbox)
{
    var obj = document.getElementById(fileupload);
    obj.value = ""; 
    obj = document.getElementById(txtbox);
    obj.value = "";
    e.parentNode.style.display = "none";
}

//function Upload_Clear(fileupload)
//{
//    var obj = document.getElementById(fileupload);    
//    obj.select();
//    if(document.all)document.execCommand("Delete");
//    
//    obj.value = "";        
//    obj.blur();
//}

function init(){
    menu = getElementsByClassName("LeftMenuDiv", "div", document)[0];
    titles = getElementsByClassName("SubMenuClose", "div", menu);
    submenus = getElementsByClassName("ChildMenuDiv", "div", menu);
    for(i=0; i<Math.max(titles.length, submenus.length); i++) {
        titles[i].onclick = gomenu;
        if(i>0 && submenus[i])
        {
           submenus[i].style.display="none";
        }
    }
    winResize();      
}

function winResize(){
    cHeight = parseInt(document.documentElement.clientHeight);
    cWidth = parseInt(document.documentElement.clientWidth);        
    document.getElementById("LeftMenu").style.height = (cHeight -86) +"px";                
    document.getElementById("ShowPage").width = (cWidth -184);
    document.getElementById("ShowPage").height = (cHeight -82);
}
function getElementsByClassName(strClassName, strTagName, oElm){
    var arrElements = (strTagName == "*" && document.all)? document.all : oElm.getElementsByTagName(strTagName);
    var arrReturnElements = new Array();
    strClassName = strClassName.replace(/\-/g, "\\-");
    var oRegExp = new RegExp("(^|\\s)" + strClassName + "(\\s|$)");
    var oElement;
    for(var i=0; i<arrElements.length; i++){
        oElement = arrElements[i];      
        if(oRegExp.test(oElement.className)){
            arrReturnElements.push(oElement);
        }   
    }
    return (arrReturnElements)
}
function gomenu(e) {
    if (!e)
        var e = window.event;
    var ce = (e.target) ? e.target : e.srcElement;
    var sm;
    for(var i in titles) {
        if(titles[i] == ce)
            sm = i;
    }
    if(titles[sm].className == "SubMenuOpen") {
        hidemenu(sm);            
    } else {            
        slash_contractall();
        showmenu(sm);
    }
}
function slash_expandall(){
    if (typeof menu!="undefined"){
        for(i=0; i<Math.max(titles.length, submenus.length); i++){
	        titles[i].className="SubMenuClose";
	        if(submenus[i])submenus[i].style.display="block";		    
        }
    }
}

function slash_contractall(){
    if (typeof menu!="undefined"){
        for(i=0; i<Math.max(titles.length, submenus.length); i++){
	        titles[i].className="SubMenuClose";
	        if(submenus[i])submenus[i].style.display="none";		    
        }
    }
}
function hidemenu(sm) {        
    if(submenus[sm])submenus[sm].style.display = "none";            
    titles[sm].className = "SubMenuClose";        
}

function showmenu(sm) {   
    if(submenus[sm])submenus[sm].style.display = "block";            
    titles[sm].className = "SubMenuOpen";               
}