	var op_toged=true;//�Ƿ�֧��չ��ģʽ
	var op_CollapseNode=false;//��չ��ģʽʱ���Ƿ�չ��������ԭչ���Ĳ���
	var op_homeindex=1;//��չ��ģʽʱ����һ��չ���Ĳ��֣�С�ڵ�����ʱ����cookie���ô򿪵�����
	var op_name;//�����б���ϵͳ�е�����
	
	function op_bodyselectstart()
	{
	  window.event.cancelBubble = true;
	  window.event.returnValue = false;
	  return false;
	}
	
	var op_oldtd=null;
	
	function op_menuclick(atd)
	{
		if (!op_toged) return;
		if (op_CollapseNode&&(op_oldtd!=null)&&(op_oldtd!=atd))
		{
			var oldtb=op_oldtd.parentElement.parentElement.parentElement;
			oldtb.rows.item(1).style.display="none";
			op_oldtd.className="op_m_2_1";
		}
		op_oldtd=atd;
		
		var tb=atd.parentElement.parentElement.parentElement;
		var sty=tb.rows.item(1).style.display;		
		if (sty=="")
		{
			tb.rows.item(1).style.display="none";
			atd.className="op_m_2_1";
		}
		else
		{
			tb.rows.item(1).style.display="";
			atd.className="op_m_2";
		}
		
		//��cookie��¼չ��״̬
		if (op_homeindex<1)
		{
			var i,j,tbzones,tbobj;
			tbzones=document.getElementsByName("op_tbzone");
			j=tbzones.length;
			if(op_CollapseNode){
				for (i=0;i<j;i++)
				if (tbzones.item(i,0).rows.item(0).children(0)==op_oldtd)
				{
					SetCookie(op_name+i.toString(),'false');
				}else{
					SetCookie(op_name+i.toString(),'true');
				}
			}else{
				for (i=0;i<j;i++)
				if (tbzones.item(i,0).rows.item(0).children(0)==atd)
				{
					if (tb.rows.item(1).style.display=="none")
						SetCookie(op_name+i.toString(),'true');
					else
						SetCookie(op_name+i.toString(),'false');
				}
			}
		}
	}

	function op_menuover(atd)
	{	
		var tb=atd.parentElement.parentElement.parentElement;
		var sty=tb.rows.item(1).style.display;		

		var tb=atd.parentElement.parentElement.parentElement;
		var sty=tb.rows.item(1).style.display;		
		if (sty=="")
		{
			atd.className="op_m_2_";
		}
		else
		{
			atd.className="op_m_2_1_";
		}
	}

	function op_menuout(atd)
	{
		var tb=atd.parentElement.parentElement.parentElement;
		var sty=tb.rows.item(1).style.display;		

		var tb=atd.parentElement.parentElement.parentElement;
		var sty=tb.rows.item(1).style.display;		
		if (sty=="")
		{
			atd.className="op_m_2";
		}
		else
		{
			atd.className="op_m_2_1";
		}
	}

	function op_doload(opname)
	{
		op_name=opname;
		var i,j,tbzones,tbobj;
		tbzones=document.getElementsByName("op_tbzone");
		j=tbzones.length;
		if (op_toged)
		{
			if (op_homeindex>0)
			{
				for (i=0;i<j;i++)
				if ((op_homeindex-1)!=i)
				{
					tbobj=tbzones.item(i,0);
					tbobj.rows.item(0).children(0).className="op_m_2_1";
					tbobj.rows.item(1).style.display="none";
				}
				else
				{
					tbobj=tbzones.item(i,0);
					op_oldtd=tbobj.rows.item(0).children(0);
				}
			}
			else
			{
				//��cookie�м���״̬
				if(op_CollapseNode){
					for (i=0;i<j;i++)
					if (GetCookie(op_name+i.toString())=="false"&&op_oldtd==null)
					{
						op_oldtd = tbzones.item(i,0).rows.item(0).children(0);
					}else{
						tbobj=tbzones.item(i,0);
						tbobj.rows.item(0).children(0).className="op_m_2_1";
						tbobj.rows.item(1).style.display="none";
					}
					if(op_oldtd==null){
						tbobj=tbzones.item(0,0);
						tbobj.rows.item(0).children(0).className="op_m_2";
						tbobj.rows.item(1).style.display="";
						op_oldtd = tbobj.rows.item(0).children(0);
					}
				}else{
					for (i=0;i<j;i++)
					if (GetCookie(op_name+i.toString())=="true"&&op_oldtd==null)
					{
						tbobj=tbzones.item(i,0);
						tbobj.rows.item(0).children(0).className="op_m_2_1";
						tbobj.rows.item(1).style.display="none";
					}					
				}
			}
		}
		else
		{
			for (i=0;i<j;i++)
			{
				tbobj=tbzones.item(i,0);
				tbobj.rows.item(0).children(0).style.cursor="default";
			}		
		}
	}

	//------------------------------------------line 
	var op_oldline=null;
	function op_lineon(atrtd)
	{
		if (op_oldline!=atrtd)	atrtd.bgColor='#D5DCEC';
	}
	
	function op_lineout(atrtd)
	{
		if (op_oldline!=atrtd)	atrtd.bgColor='';
	}
	
	function op_lineat(atrtd)
	{
		if (op_oldline!=null) op_oldline.bgColor="";
		op_oldline=atrtd;
		atrtd.bgColor="#D5DCEC";
	}	
	//------------------------------------------line 
