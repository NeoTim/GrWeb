iws=false;
function shlist(){
document.getElementById("t_select-list").style.display=document.getElementById("t_select-list").style.display=="block"?"none":"block";
}
function changesever(ts){
document.getElementById("t_selected").innerHTML="---"+ts.innerHTML+"---";
shlist();
}
function cws(val){
iws=val;
}
function hlist(){
	if(!iws)document.getElementById("t_select-list").style.display="none";
}