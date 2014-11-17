package com.cqedu.maintenance.user.action;
import java.util.List;


import javax.servlet.http.HttpServletRequest;


import org.apache.struts2.ServletActionContext;


import com.cqedu.bean.User;
import com.cqedu.maintenance.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddUser extends ActionSupport {

	
	private static final long serialVersionUID = -1907000408793835197L;
	private User userbean=null;
	private UserService userservice=null;
	private List<User> userlist=null;
	private List<User> chooselist=null;
	private List<User> selectDeptList=null;
	private List<User> selectPosList=null;
	private List<User> selectRoleList=null;
	private List<User> selectFeeList=null;
	private List<User> loginList=null;
	private List<User> list=null;
	private User newUser=null;
	private List<User> rolepermlist=null;

	/*
	 * 添加用户
	 */
	public String addUser()
	{
		this.userservice.addUser(userbean);
		
		return SUCCESS;
	}
	
	public String selectOption()
	{
		this.selectDeptList=this.userservice.selectDept(userbean);
		this.selectPosList=this.userservice.selectPos(userbean);
		this.selectRoleList=this.userservice.selectRole(userbean);
		this.selectFeeList=this.userservice.selectFee(userbean);
		return SUCCESS;
	}
	
	/*
	 * 判断用户名密码是否正确
	 */
	public String checkUser()
	{
		String flag=null;
		this.newUser=userservice.checkUser(userbean);
		if(newUser!=null)
		{
			ActionContext actionContext = ActionContext.getContext();
			HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
			request.getSession().setAttribute("newUser", newUser);
			flag=SUCCESS;
		}
		else
		{
			
			flag=ERROR;
		}
		
		
		
		return flag;
	}
	
	/*
	 * 从数据库表中输出特定的
	 */
	public String userList()
	{
		
		this.userlist=this.userservice.userList();
		return SUCCESS;
	}
	
	/*
	 * 从数据库中删除特定行
	 */
	public String deleteUser()
	{
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String uid=request.getParameter("uid");
		User user=new User();
		int uuid=Integer.parseInt(uid);
		user.setUserid(uuid);
		
		this.userservice.deleteUser(user);
		return SUCCESS;
	}
	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}
	public List<User> getUserlist() {
		return userlist;
	}
	
	/*
	 * 修改选中用户的信息
	 */
	public String changeUser()
	{
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String cuid=request.getParameter("cuid");
		User user=new User();
		int cuuid=Integer.parseInt(cuid);
		user.setUserid(cuuid);
		this.chooselist=this.userservice.changeUser(user);
		System.out.println(chooselist.size());
		return SUCCESS;
	
	}
	
	
	/*
	 * 更新数据库的信息
	 */
	public String updateUser()
	{
		
		System.out.println(userbean.getUserid());
		this.userservice.updateUser(userbean);
		return SUCCESS;
	}
	
	
	/*
	 * 用户登录，输出不同的表
	 */
	public String selectDiffUser()
	{
		String flag=null;
		this.loginList=this.userservice.login(userbean);
		this.list=this.userservice.list(userbean);
		if(loginList.size()==0)
		{
		flag=ERROR;
		}
		else
		{
			flag=SUCCESS;
		}
		return flag;
	}
	
	/*
	 * 角色权限分配
	 */
	public String insertRolePerm()
	{
		this.userservice.updateRolePerm(userbean);
		return SUCCESS;
	}
	
	/*
	 * 查看用户权限
	 */
	public String viewPerm()
	{
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String ruid=request.getParameter("rid");
		User user=new User();
		int ruuid=Integer.parseInt(ruid);
		user.setUserid(ruuid);
		this.rolepermlist=this.userservice.selectRolePerm(user);
		return SUCCESS;
	}
	public void setChooselist(List<User> chooselist) {
		this.chooselist = chooselist;
	}
	public List<User> getChooselist() {
		return chooselist;
	}
	public UserService getUserservice() {
		return userservice;
	}
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}
	
	public User getUserbean() {
		return userbean;
	}
	public void setUserbean(User userbean) {
		this.userbean = userbean;
	}

	public void setSelectDeptList(List<User> selectDeptList) {
		this.selectDeptList = selectDeptList;
	}

	public List<User> getSelectDeptList() {
		return selectDeptList;
	}

	public void setSelectPosList(List<User> selectPosList) {
		this.selectPosList = selectPosList;
	}

	public List<User> getSelectPosList() {
		return selectPosList;
	}

	public void setSelectRoleList(List<User> selectRoleList) {
		this.selectRoleList = selectRoleList;
	}

	public List<User> getSelectRoleList() {
		return selectRoleList;
	}

	public void setSelectFeeList(List<User> selectFeeList) {
		this.selectFeeList = selectFeeList;
	}

	public List<User> getSelectFeeList() {
		return selectFeeList;
	}

	public void setLoginList(List<User> loginList) {
		this.loginList = loginList;
	}

	public List<User> getLoginList() {
		return loginList;
	}

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public User getNewUser() {
		return newUser;
	}

	public void setNewUser(User newUser) {
		this.newUser = newUser;
	}

	public List<User> getRolepermlist() {
		return rolepermlist;
	}

	public void setRolepermlist(List<User> rolepermlist) {
		this.rolepermlist = rolepermlist;
	}


}

	



	


