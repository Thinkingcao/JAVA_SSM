package com.yc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.model.ExpertModel;
import com.yc.model.ExpertQueryModel;
import com.yc.model.ProjectModel;
import com.yc.model.ProjectQueryModel;
import com.yc.model.ProjetCategoryQueryModel;
import com.yc.model.UnitModel;
import com.yc.model.UnitQueryModel;
import com.yc.model.UserModel;
import com.yc.model.UserQueryModel;
import com.yc.service.ExpertService;
import com.yc.service.UserService;


@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired
	private UserService us;
	private int sessionLoginId;
	private String sessionLoginName;
	/*��¼��֤��ʼ*/
	@RequestMapping("login")
	public String login(UserQueryModel uq,Model m,HttpServletResponse resp){
		UserModel um=null;
		int power=0;
		try{
			um=us.checkLogin(uq);
			power=um.getGid();
		}catch(Exception e){
			e.printStackTrace();
		}
		if(power==1){
			m.addAttribute("um", um);
			sessionLoginId=um.getUid();
			sessionLoginName=um.getUsername();
			return "admin/admin_index";
		}else if(power==2){
			m.addAttribute("um", um);
			sessionLoginId=um.getUid();
			sessionLoginName=um.getUsername();
			return "expert/expert_index";
		}else if(power==3){
			m.addAttribute("um", um);
			sessionLoginId=um.getUid();
			sessionLoginName=um.getUsername();
			return "unit/unit_index";
		}else{
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html;charset=UTF-8");
			try {
				resp.getWriter().print("<script type='text/javascript'>alert('�û������������');history.back(-1);</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	/*��¼��֤����*/
	
/*����Ա��ɫ������ƿ�ʼ*/
	/*���ҿ�ʼ����ҳ����ʾ*/
	@RequestMapping(value={"user/findAll"})
	public String list(Model m){
		List<UserModel> um=us.findAll();
		m.addAttribute("um", um);
		return "admin/showusers";
	}
	@RequestMapping(value={"experts/findAll"})
	public String list2(Model m){
		List<ExpertModel> em=us.expertFindAll();
		m.addAttribute("em", em);
		return "admin/showexperts";
	}
	@RequestMapping(value={"units/findAll"})
	public String list3(Model m){
		List<UnitModel> um=us.unitFindAll();
		m.addAttribute("um", um);
		return "admin/showunits";
	}
	@RequestMapping(value={"projectCategorys/findAll"})
	public String list4(Model m){
		List<ProjetCategoryQueryModel> um=us.projectCategoryFindAll();
		m.addAttribute("um", um);
		return "admin/showprojectCategorys";
	}
	@RequestMapping("{categoryid}/projectsFindByIdD")
	public String list5(@PathVariable int categoryid,Model m){
		System.out.println(categoryid);
		List<ProjectModel> um=us.projectFindByIdD(categoryid);
		m.addAttribute("um", um);
		return "admin/showprojects";
	}
	/*���ҽ���*/
	
	/*���²��ҿ�ʼ������ȡ���ݷ�������*/
	@RequestMapping("{expertid}/expertUpdate")
	public String update(@PathVariable int expertid,Model m){
		m.addAttribute("u", us.expertFindById(expertid));
		return "admin/adminviewexpertinfo";
	}
	@RequestMapping("{unitid}/unitUpdate")
	public String update1(@PathVariable int unitid,Model m){
		m.addAttribute("u", us.unitFindById(unitid));
		return "admin/adminviewunitinfo";
	}
	/*@RequestMapping("projectUpdate")//����Ҫ��ȡ
	public String update2(){
		return "admin/viewprojectinfo";
	}*/
	@RequestMapping("{categoryid}/projectUpdate")
	public String update2(@PathVariable int categoryid,Model m){
		m.addAttribute("u", us.projectCategoryFindById(categoryid));
		return "admin/adminupdateshowprojects";
	}
	/*���²��ҽ���*/
	
	/*��ʽ���¿�ʼ*/
	@RequestMapping(value={"{expertid}/expertDoUpdate"},method=RequestMethod.POST)
	public String doUpdate(ExpertModel em,@PathVariable int expertid){
		us.expertDoUpdate(em);
		return "admin/admin_index";
	}//��ת����
	@RequestMapping(value={"{unitid}/unitDoUpdate"},method=RequestMethod.POST)
	public String doUpdate1(UnitQueryModel uqm,@PathVariable int unitid){
		us.unitDoUpdate(uqm);
		return "admin/admin_index";
	}//��ת����
	@RequestMapping(value={"{categoryid}/projectDoUpdate"},method=RequestMethod.POST)
	public String doUpdate2(ProjetCategoryQueryModel pcqm,@PathVariable int categoryid){
		System.out.println(pcqm.getCategoryname()+"-----"+categoryid);
		us.projectCategoryDoUpdate(pcqm);
		return "admin/admin_index";
	}//��ת����
	/*��ʽ���½���*/
	
	/*ɾ����ʼ*/
	@RequestMapping(value="{uid}/userDel")
	public String del(@PathVariable int uid){
		us.userDel(uid);
		return "redirect:/admin/admin_index";
	}//�û�ɾ��-��ת����
	@RequestMapping(value="{expertid}/expertDel")
	public String del2(@PathVariable int expertid){
		us.expertDel(expertid);
		return "redirect:/admin/admin_index";
	}//ר��ɾ��-��ת����
	@RequestMapping(value="{unitid}/unitDel")
	public String del3(@PathVariable int unitid){
		us.unitDel(unitid);
		return "redirect:/admin/admin_index";
	}//��λ��Ϣɾ��-��ת����
	@RequestMapping(value="{categoryid}/projectCategoryDel")
	public String del4(@PathVariable int categoryid){
		us.projectCategoryDel(categoryid);
		return "redirect:/admin/showprojectCategorys1";
	}//��Ŀ��Ϣɾ��-��ת����
	/*ɾ������*/
	
	/*���ӿ�ʼ*/
	@RequestMapping(value="add")
	public String add(){
		return "admin/adduser";
	}
	@RequestMapping(value="addprojectcategory")
	public String add1(Model m){
		m.addAttribute("um",us.expertFindAll());
		return "admin/addprojectcategory";
	}
	@RequestMapping(value="addprojectcategory",method=RequestMethod.POST)
	public String add1(ProjetCategoryQueryModel pcqm,HttpServletRequest req,HttpServletResponse resp){
		System.out.println("��Ŀ������"+pcqm);
		System.out.println(pcqm.getExpertid());
		us.addProjectCategory(pcqm);
		return "admin/addprojectcategory";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(UserModel um,HttpServletRequest req,HttpServletResponse resp){
		String power=req.getParameter("select");
		int temp;
		if(power.equals("��λ")){
			temp=3;
		}else{
			temp=2;
		}
		um.setGid(temp);
		System.out.println(um.getGid());
		us.addUser(um);
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		try {
			resp.getWriter().print("<script type='text/javascript'>alert('���ӳɹ�');</script>");
			return "admin/showusers";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//��ת����
		return null;
	}
	/*���ӽ���*/
/*����Ա��ɫ������ƽ���*/

	
	
	
/*ר�ҽ�ɫ������ƿ�ʼ*/	
	/*������ʾ��ʼ*/
	@RequestMapping(value={"expertFindById"})
	public String findById(Model m){
		m.addAttribute("um", us.expertFindById(sessionLoginId));
		return "expert/viewexpertinfo";
	}
	@RequestMapping(value={"expertUpdatePass"})
	public String findById2(Model m){
		m.addAttribute("umm", us.expertUpdatePass(sessionLoginId));
		return "expert/reworkpassword";
	}
	@RequestMapping(value={"expertProjectManage"})
	public String findById3(Model m){
		m.addAttribute("umm", us.expertFindProject());
		return "expert/showprojectCategorys";
	}
	@RequestMapping(value={"{categoryid}/viewprojectinfo"})
	public String findById3(@PathVariable int categoryid,Model m){
		m.addAttribute("umm", us.projectFindById(categoryid));
		return "expert/viewprojectinfo";
	}//������-��ѯ���Ϊ����-�����ʾ
	/*������ʾ����*/
	
	/*���²�����ʼ*/
	@RequestMapping(value={"{expertid}/expertDoUpdateE"},method=RequestMethod.POST)
	public String doUpdate5(ExpertModel em,@PathVariable int expertid,HttpServletResponse resp){
		us.expertDoUpdate(em);
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		try {
			resp.getWriter().print("<script type='text/javascript'>alert('�����޸ĳɹ�');</script>");
			return "expert/expert_index";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}//ר����Ϣ�޸�
	@RequestMapping(value={"{uid}/reworkpasswordD"},method=RequestMethod.POST)
	public String doUpdate5(UserModel um,@PathVariable int uid,HttpServletResponse resp){
		us.unitPassDoUpdate(um);
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		try {
			resp.getWriter().print("<script type='text/javascript'>alert('�����޸ĳɹ�');</script>");
			return "expert/expert_index";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}//ר�������޸�
	@RequestMapping(value={"{project_id}/expertProjectDoupdate"})
	public String doUpdate(@PathVariable int project_id,ProjectQueryModel pm){
		us.expertProjectDoupdate(pm);
		return "expert/showprojectCategorys";
	}//������Ŀ-���ۺ͵÷�
	/*���²�����������*/
	
/*ר�ҽ�ɫ������ƽ���*/
	
	
/*��λ�û���ɫ������ƿ�ʼ*/
	/*������ʾ��ʼ*/
	@RequestMapping(value={"viewunitinfo"})
	public String findById4(Model m){
		System.out.println(sessionLoginId);
		m.addAttribute("u",us.unitFindById(sessionLoginId));
		return "unit/viewunitinfo";
	}
	@RequestMapping(value={"reworkpassword"})
	public String findById5(Model m){
		System.out.println(sessionLoginId);
		m.addAttribute("umm",us.expertUpdatePass(sessionLoginId));
		return "unit/reworkpassword";
	}
	@RequestMapping("showprojectCategorys")
	public String findById6(Model m){
		m.addAttribute("umm", us.expertFindProject());
		return "unit/showprojectCategorys";
	}
	@RequestMapping("simpleSearch")
	public String findById7(){
		return "unit/simpleSearch";
	}
	@RequestMapping("highquery")
	public String findById8(){
		return "unit/highquery";
	}
	@RequestMapping(value={"simpleSearch1"},method=RequestMethod.POST)
	public String findById10(@PathVariable String projectname,Model m){
		System.out.println("��Ϣ����");
		m.addAttribute("umm", us.searchProject(projectname));
		return "unit/simpleSearch1";
	}//�������-δ���
	@RequestMapping(value={"highqueryY"},method=RequestMethod.POST)
	public String findById9(){
		return "unit/highquery";
	}//�߼�����-δ���
	/*������ʾ����*/
	
	/*������Ŀ��ʼ*/
	@RequestMapping("{categoryid}/applyproject")
	public String add2(Model m,@PathVariable int categoryid){
		m.addAttribute("umm", us.projectCategoryFindById(categoryid));
		return "unit/applyproject";
	}
	@RequestMapping(value="addproject",method=RequestMethod.POST)
	public String add2(ProjectQueryModel pqm){
		System.out.println(pqm);
		System.out.println(pqm.getUnitid());
		us.addProject(pqm);
		return "unit/unit_index";
	}
	/*������Ŀ����*/
	
	/*����do��ʼ*/
	@RequestMapping(value={"{unitid}/unitDoUpdateE"},method=RequestMethod.POST)
	public String doUpdate3(UnitQueryModel uqm,@PathVariable int unitid,HttpServletResponse resp){
		us.unitDoUpdate(uqm);
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		try {
			resp.getWriter().print("<script type='text/javascript'>alert('��λ��Ϣ�޸ĳɹ�');</script>");
			return "unit/unit_index";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}//��λ��Ϣ�޸�-��ת����
	@RequestMapping(value={"reworkpassword"},method=RequestMethod.POST)
	public String doUpdate4(UserModel um,HttpServletResponse resp){
		um.setUid(sessionLoginId);
		us.unitPassDoUpdate(um);
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		try {
			resp.getWriter().print("<script type='text/javascript'>alert('�����޸ĳɹ�');</script>");
			return "unit/unit_index";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}//�����޸�-��ת����
	/*����do����*/
	
/*��λ�û���ɫ������ƽ���*/
	
	
	
	
	
	
	
	
	
}
