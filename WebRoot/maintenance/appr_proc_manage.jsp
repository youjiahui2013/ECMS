<%@ page contentType="text/html; charset=gbk" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�������̹���</title>
		
<script language="javascript"> 

	var currentList = null; 
	
	function move(){ 
		if(arguments.length==1){ 
		moveUp(arguments[0]); 
		}else if(arguments.length==2){ 
		moveRight(arguments[0],arguments[1]); 
		} 
	} 
	
	function moveUp(direction){ 
		if(currentList == null) return; 
			var index = currentList.selectedIndex; 
			if(direction){//up 
			if(index==0) return; 
	
			var value = currentList.options[index-1].value; 
			var text = currentList.options[index-1].text; 
	
			currentList.options[index-1].value = currentList.options[index].value; 
			currentList.options[index-1].text = currentList.options[index].text; 
	
			currentList.options[index].value = value; 
			currentList.options[index].text = text; 
	
			currentList.options[index].selected = false; 
			currentList.options[index-1].selected = true; 
		}else{//down 
		if(index==(currentList.length-1)) return; 

			var value = currentList.options[index+1].value; 
			var text = currentList.options[index+1].text; 
			
			currentList.options[index+1].value = currentList.options[index].value; 
			currentList.options[index+1].text = currentList.options[index].text; 
	
			currentList.options[index].value = value; 
			currentList.options[index].text = text; 
	
			currentList.options[index].selected = false; 
			currentList.options[index+1].selected = true; 
			} 
	} 
	
	function moveRight(src,des){ 
		if(src.selectedIndex==-1){ 
		alert("Please select first!"); 
		return; 
		} 
	
		for(var i=0;i<src.length;i++){ 
		if(src[i].selected){ 
		var op = document.createElement("option"); 
		op.value = src.options[src.selectedIndex].value; 
		op.text = src.options[src.selectedIndex].text; 
		des.options.add(op); 
		src.remove(i); 
		i--; 
		} 
		} 
	} 
	
	function setButton(obj){ 
		if(obj.length==0) return; 
			currentList = obj; 
		if(obj.id=="leftList"){ 
			document.getElementById("btnLeft").disabled = true; 
			document.getElementById("btnRight").disabled = false; 

			reSelect(document.getElementById("rightList")); 
		}else{ 
			document.getElementById("btnLeft").disabled = false; 
			document.getElementById("btnRight").disabled = true; 

			reSelect(document.getElementById("leftList")); 
		} 
	} 

	function reSelect(obj){ 
		for(var i=0; i<obj.length; i++){ 
			if(obj[i].selected) obj[i].selected = false; 
		} 
	} 
	
	
	
	
	
	
	function setValue()
	{
		clearValue();
		
		var radionArr = document.getElementsByName('inp1');
		var option;
		for(var i = 0 ; i < radionArr.length ;i++)
		{
			if(radionArr[i].checked == true)
			{
				option = document.createElement('option');
				
				option.innerText = '��������';
				option.value = '��������';
				
				document.getElementById('rightList').appendChild(option);
				break;
			}
		}
	}
	
	function clearValue()
	{
		var opArr = document.getElementById('rightList').getElementsByTagName('option');
		
		for(var i = opArr.length-1;i >=0;i--)
		{
			document.getElementById('rightList').removeChild(opArr[i]);
		}
	}
	
</script>

<script type="text/javascript">
	function check(){
	 	var btnr=document.getElementById("btnRight");
	 	var btnl=document.getElementById("btnLeft");
		btnr.disabled=true;
		btnl.disabled=true;
		var rightval=document.getElementById("rightList").options;
		var m=0;
		if(rightval.length!=0){
	 		for(var i=0;i<rightval.length;i++){
	 		m=m+1;
				addtr(rightval.options[i].value,m);
				
				}
			return true;
		}else{
			alert("û��ѡ��������");
			return false;
		}
	}
	
	function addtr(mv,mc){
		iRow=activeTable.rows.length;
		list=iRow-1;
		myNewRow =activeTable.insertRow(); // insert TR row
		for (j=0; j <activeTable.rows(iRow-1).cells.length; j++){
			myNewCell = activeTable.rows[iRow].insertCell(j) ; // insert TD cecll of TR collection
			switch(j){
				case 0:
				activeTable.rows[iRow].cells(j).innerHTML ="<input name='flowSeqList["+list+"].seq.sid' style='visibility:hidden;border-left:none;border-right:none;border-top:none;border-bottom:none;' readonly='readonly' value='"+mv+"' >";
				break; 
				case 1:
	           activeTable.rows[iRow].cells(j).innerHTML ="<input name='flowSeqList["+list+"].flowsequence' style='visibility:hidden;border-left:none;border-right:none;border-top:none;border-bottom:none;' readonly='readonly' value='"+mc+"' >";
				
			}
		}
	}
</script>



<script type="text/javascript">
	function validate()
	{
		
	}
</script>



<style type="text/css">
<!--
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>


</head>
	<body style="background-color: Silver">
		<form action="<%=request.getContextPath()%>/flow/add-flow.action" name="form1" onsubmit="return check();">
			<h1 align="center" style="background-color:aqua;font-size:34px;font-weight:bold;color:Black">
				�������̹���
			</h1>
			<br />
			<p>
				�����µ���������
			</p>
			
			������������
	    <input type="text" name="flow.fname" id="FlowId" /><br>
			�����������ͣ�
			<input type="radio" name="flow.ftype" value="Ԥ��" />
			Ԥ��&nbsp;
			<input type="radio" name="flow.ftype" value="����" />
			����<br />

			�Ƿ����ɲ�����������ʱԤ��������ˣ���
			<input type="radio" name="inp1" id="id_inp" value="ok" onclick="setValue()"/>
			��&nbsp;
			<input type="radio" name="inp1" id="id_inp" value="no" onclick="clearValue()" checked="checked"/>
			��
			<br />

			<div id="div1">
				<table width="40%">
					<tr>
						<td colspan="2">
						��������ѡ��	
						</td>
						<td colspan="2">
							��������˳���������ͨ����������ȷ�����������ϵ��
						</td>
					</tr>
					
					<tr>
						

						<td>
							<div id="divchar">
								<select multiple="multiple" id="leftList"
									onclick="setButton(this)" style="height: 180px; width: 160px;">
									<s:iterator var="USERSEQ" value="seqList">
    									<option value="${USERSEQ.sid}">${USERSEQ.name }</option>
    								</s:iterator>
								</select>
							</div>
						</td>

						<td>
							<input type="button" value=" ���� " id="btnRight"
								onclick="move(document.getElementById('leftList'),document.getElementById('rightList'));"
								style="width: 65" />
							<input type="button" value=" ���� " id="btnLeft"
								onclick="move(document.getElementById('rightList'),document.getElementById('leftList'));"
								style="width: 65" />
						</td>

						<td>
							<select multiple="multiple" id="rightList"
								onclick="setButton(this)" style="height: 180px; width: 160px;">
								</select>
						</td>
						
						<td>
							<input type="button" value=" Up " id="btnUp"
								onclick="move(true);" style="width: 65" />
							<input type="button" value=" Down " id="btnDowm"
								onclick="move(false);" style="width: 65" />
						</td>
					</tr>
				</table>
			</div>
			<br/>
			
			<table>
				<tr>
					<input type="submit" value="�ύ" />
				</tr>
			</table>
			
			<table id="activeTable" border="1" style="visibility: hidden;">
					<tr align="center">
						<td></td>
						<td></td>
					</tr>
			</table>
		</form>		
	</body>
</html>
