function checkLogin(form){
		if(form.username.value==""){
			alert("�û�������Ϊ��");
			form.username.focus();
			return false;
		}
		if(form.password.value==""){
			alert("�û����벻��Ϊ��");
			form.password.focus();
			return false;
		} 
		if((form.username.value=="admin") && (form.password.value=="123")){
			form.action="admin/admin_index.html";
			return true;
		}
		if((form.username.value=="expert") && (form.password.value=="123")){
			form.action="expert/expert_index.html";
			return true;
		}
		if((form.username.value=="unit") && (form.password.value=="123")){
			form.action="unit/unit_index.html";
			return true;
		}
		return true;
	}
	
function checkUser(form){
var temp1 = form.username;
if(temp1.value=="")
  { 
       alert("�û�������Ϊ�գ�");
       temp1.focus();
       return false; 
  }
  return true;
}
//�����Ŀ������֤
function checkAddProjectCategory(form){
var temp1 = document.getElementById("temp1");
var temp2 = document.getElementById("temp2");
var temp3 = document.getElementById("temp3");
if(temp1.value=="")
    { 
       alert("��Ŀ�����Ϊ�գ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("�걨��ʼʱ�䲻��Ϊ�գ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("�걨��������Ϊ�գ�");
       temp3.focus();
       return false; 
     }else{return true;}
}
//��Ŀ������֤
function checkAudit(form){
var temp1 = document.getElementById("opinion");
var temp2 = document.getElementById("score");
if(temp1.value=="")
    { 
       alert("�����������Ϊ�գ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
     
       alert("ר�����ֲ���Ϊ�գ�");
       temp2.focus();
       return false; 
     }
     else{return true;}
}
  
function checkProjict(form){
var temp1 = document.getElementById("categoryname");
if(temp1.value=="")
    { 
       alert("��Ŀ������Ϊ�գ�");
       temp1.focus();
       return false; 
     }
     return true;
}
function checkUintPassword(form){
var temp1 = document.getElementById("temp1");
var temp2 = document.getElementById("temp2");
var temp3 = document.getElementById("temp3");
if(temp1.value=="")
    { 
       alert("ԭʼ���벻��Ϊ�գ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("�����벻��Ϊ�գ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("�ظ������벻��Ϊ�գ�");
       temp3.focus();
       return false; 
     }else {
��������return true;
������}
}
//�޸�ר����Ϣ
function checkExpert(form){
var temp1 = document.getElementById("name");
var temp2 = document.getElementById("unitname");
var temp3 = document.getElementById("nation");
var temp4 = document.getElementById("sex");
var temp5 = document.getElementById("title");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("���Ʋ���Ϊ�գ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("��λ���Ʋ���Ϊ�գ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("��������Ϊ�գ�");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("�Ա���Ϊ�գ�");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("ְ�Ʋ���Ϊ�գ�");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("�绰����Ϊ�գ�");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("��鲻��Ϊ�գ�");
       temp7.focus();
       return false; 
     }
else{return true;}
}

function checkExpertPassword(form){
var temp1 = document.getElementById("temp1");
var temp2 = document.getElementById("temp2");
var temp3 = document.getElementById("temp3");
if(temp1.value=="")
    { 
       alert("ԭʼ���벻��Ϊ�գ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("�����벻��Ϊ�գ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("�ظ������벻��Ϊ�գ�");
       temp3.focus();
       return false; 
     }else {
��������return true;
������}
}
//�޸ĵ�λ��Ϣ
function checkUnit(form)
{
var temp1 = document.getElementById("unitname");
var temp2 = document.getElementById("address");
var temp3 = document.getElementById("corporation");
var temp4 = document.getElementById("investment");
var temp5 = document.getElementById("type");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("email");
var temp8 = document.getElementById("fax");
var temp9 = document.getElementById("zipcode");
var temp10 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("�����뵥λ���ƣ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("��ַ���ܿգ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("���˲���Ϊ�գ�");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("ע���ʽ���Ϊ�գ�");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("��λ���ʲ���Ϊ�գ�");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("��λ�绰����Ϊ�գ�");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("���䲻��Ϊ�գ�");
       temp7.focus();
       return false; 
     }
else if(temp8.value=="")
    { 
       alert("���治��Ϊ�գ�");
       temp8.focus();
       return false; 
     }
else if(temp9.value=="")
    { 
       alert("�ʱ಻��Ϊ�գ�");
       temp9.focus();
       return false; 
     }
else if(temp10.value=="")
    { 
       alert("��鲻��Ϊ�գ�");
       temp10.focus();
       return false; 
     }
     return true;
}

function checkUnitInfromation(form){
var temp1 = document.getElementById("unitname");
var temp2 = document.getElementById("address");
var temp3 = document.getElementById("corporation");
var temp4 = document.getElementById("investment");
var temp5 = document.getElementById("type");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("email");
var temp8 = document.getElementById("fax");
var temp9 = document.getElementById("zipcode");
var temp10 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("�����뵥λ���ƣ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("��ַ���ܿգ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("���˲���Ϊ�գ�");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("ע���ʽ���Ϊ�գ�");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("��λ���ʲ���Ϊ�գ�");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("��λ�绰����Ϊ�գ�");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("���䲻��Ϊ�գ�");
       temp7.focus();
       return false; 
     }
else if(temp8.value=="")
    { 
       alert("���治��Ϊ�գ�");
       temp8.focus();
       return false; 
     }
else if(temp9.value=="")
    { 
       alert("�ʱ಻��Ϊ�գ�");
       temp9.focus();
       return false; 
     }
else if(temp10.value=="")
    { 
       alert("��鲻��Ϊ�գ�");
       temp10.focus();
       return false; 
     }else{
     return true;
     }
} 
//��Ŀ�걨����֤
function checkProjectDeclare(form){
var temp = document.getElementById("projectname");
var temp1 = document.getElementById("unitname");
var temp2 = document.getElementById("applicant");
var temp3 = document.getElementById("grade");
var temp4 = document.getElementById("education");
var temp5 = document.getElementById("filldate");
var temp6 = document.getElementById("status");
var temp7 = document.getElementById("future");
var temp8 = document.getElementById("analysis");
var temp9 = document.getElementById("way");
var temp10 = document.getElementById("result");
var temp11 = document.getElementById("capital");

    if (temp.value=="")
    { 
       alert("��������Ŀ���ƣ�");
       temp.focus();
       return false; 
     }else if(temp1.value=="")
    { 
       alert("�����뵥λ���ƣ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("�����˲��ܿգ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("ְ�Ʋ���Ϊ�գ�");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("ѧ������Ϊ�գ�");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("����ʱ�䲻��Ϊ�գ�");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("��Ŀ��״����Ϊ�գ�");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("��Ŀǰ������Ϊ�գ�");
       temp7.focus();
       return false; 
     }
else if(temp8.value=="")
    { 
       alert("���ѵ��������Ϊ�գ�");
       temp8.focus();
       return false; 
     }
else if(temp9.value=="")
    { 
       alert("�о���������Ϊ�գ�");
       temp9.focus();
       return false; 
     }
else if(temp10.value=="")
    { 
       alert("Ԥ���о��ɹ�����Ϊ�գ�");
       temp10.focus();
       return false; 
     }
else if(temp11.value=="")
    { 
       alert("�����ʽ���Ϊ�գ�");
       temp11.focus();
       return false; 
     }else{
     return true;
     }
}
function checkEexinfromation(form){
var temp1 = document.getElementById("name");
var temp2 = document.getElementById("unitname");
var temp3 = document.getElementById("nation");
var temp4 = document.getElementById("sex");
var temp5 = document.getElementById("title");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("���Ʋ���Ϊ�գ�");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("��λ���Ʋ���Ϊ�գ�");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("��������Ϊ�գ�");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("�Ա���Ϊ�գ�");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("ְ�Ʋ���Ϊ�գ�");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("�绰����Ϊ�գ�");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("��鲻��Ϊ�գ�");
       temp7.focus();
       return false; 
     }
else{return true;}

}

function AddNew(form){
	form.action="../unit/highquery.html";
	return true;
	}