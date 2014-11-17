package com.cqedu.budget.applist.action;



import com.cqedu.budget.applist.bean.Budgetapp;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.cqedu.budget.applist.service.UserService;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

public class AppQueryAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -458856227490777718L;
	private Budgetapp budgetapp = new Budgetapp();
	private UserService userService = null;
	private List<Budgetapp> appList = null;
	private List<Budgetapp> appunitList = null;
	private List<Budgetapp> detlFeeList = null;
	private List<Budgetapp> allFeeList=null;
	private Budgetapp newBudget=null;
	
	//8-31	
	private List<Budgetapp> apprFeeList=null;
	private List<Budgetapp> apprInfoList=null;
	private List<Budgetapp> apprProList=null;
	
	private List<Budgetapp> apprProHis=null;
	
	
	private List<Budgetapp> apprFlow=null;
	private List<Budgetapp> apprUnit=null;
	private List<Budgetapp> appName=null;
	
	private List<Budgetapp> appSum=null;

	/**
	 * 查询预算申请的action
	 */
	
	public String queryList(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String User_id=request.getParameter("buget_user_id");
		Budgetapp budgetapp=new Budgetapp();
		long user_id=Long.parseLong(User_id);
		budgetapp.setUuid(user_id);
		this.appList=this.userService.queryList(budgetapp);
		request.getSession().setAttribute("appList", appList);
		return SUCCESS;
		
	}
	
	/**
	 * 读取审批流程的action
	 */
	public String queryFlow(){
		this.apprFlow=this.userService.queryApprFlow(budgetapp);
		return SUCCESS;
	}
	
	/**
	 * 选择审批单元的action
	 */
	public String queryUnit(){
		this.apprUnit=this.userService.queryApprUnit(budgetapp);
		return SUCCESS;
	}
	/*
	 *预算申请
	 */
	public String bugetApp()
	{
		this.appunitList=this.userService.selectUnit(budgetapp);
		this.appSum=this.userService.queruAppNum(budgetapp);
		return SUCCESS;
	}
	
	/*
	 * 提取某个预算单元的明细费用
	 */
	
	
	public String queryFeeDetl()
	{
		this.detlFeeList=this.userService.selectDetlFee(budgetapp);
	
		return SUCCESS;
	}
	
	/*
	 * 提取某个预算单元的所有值
	 */
	public String selectFeeDetl()
	{
		this.allFeeList=this.userService.selectAllDetlFee(budgetapp);
		return SUCCESS;
	}
	
	
	/**
	 * 插入预算明细费用
	 */
/*	public String updateFeeDetl(){
		
		this.userService.insertDetlFee(budgetapp);
		return SUCCESS;
	}*/
	
	
	public String insertFeeDetl()
	{
		/*ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String appid=request.getParameter("appsumid");
		Budgetapp budgetapp=new Budgetapp();
		long asumid=Long.parseLong(appid);
		System.out.println(asumid);
		budgetapp.setBid(asumid);*/
		this.userService.updateFeeDetl(budgetapp);
		this.userService.insertDetlFee(budgetapp);
		this.apprFlow=this.userService.queryApprFlow(budgetapp);
		return SUCCESS;
	}

	//8-31	
	/**
	 * 查看预算明细列表及信息列表
	 */
	public String queryApprList(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String bid=request.getParameter("bid");
		long bbid=Long.parseLong(bid);
		budgetapp.setBid(bbid);
		this.apprFeeList=this.userService.queryApprList(budgetapp);
		this.apprInfoList=this.userService.queryAppDetail(budgetapp);
		System.out.println(apprInfoList.size());
		return SUCCESS;
	}
	/**
	 * 查看审批过程
	 */
	public String queryApprPro(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String bid=request.getParameter("bid");
		long bbid=Long.parseLong(bid);
		budgetapp.setBid(bbid);
		this.apprProHis=this.userService.queryApprPro(budgetapp);
		return SUCCESS;
	}
	
	public String accessAppr()
	{
		/*ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String insert_user_id=request.getParameter("insert_user_id");
		Budgetapp budgetapp=new Budgetapp();
		long insert_uid=Long.parseLong(insert_user_id);
		budgetapp.setUuid(insert_uid);*/
		this.userService.insertUuid(budgetapp);
		return SUCCESS;
	}
/*******************************************************************/	
	
	public String insertFid()
	{
		this.userService.insertFid(budgetapp);
		this.userService.insertBidAno(budgetapp);
		return SUCCESS;
	}
	
	public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	public List<Budgetapp> getAppList() {
		return appList;
	}


	public void setAppList(List<Budgetapp> appList) {
		this.appList = appList;
	}
	public void setAppunitList(List<Budgetapp> appunitList) {
		this.appunitList = appunitList;
	}
	public List<Budgetapp> getAppunitList() {
		return appunitList;
	}
	public void setDetlFeeList(List<Budgetapp> detlFeeList) {
		this.detlFeeList = detlFeeList;
	}
	public List<Budgetapp> getDetlFeeList() {
		return detlFeeList;
	}
	public List<Budgetapp> getAllFeeList() {
		return allFeeList;
	}
	public void setAllFeeList(List<Budgetapp> allFeeList) {
		this.allFeeList = allFeeList;
	}
	public Budgetapp getBudgetapp() {
		return budgetapp;
	}
	public void setBudgetapp(Budgetapp budgetapp) {
		this.budgetapp = budgetapp;
	}


	//8-31	
	public List<Budgetapp> getApprFeeList() {
		return apprFeeList;
	}
	public void setApprFeeList(List<Budgetapp> apprFeeList) {
		this.apprFeeList = apprFeeList;
	}
	public List<Budgetapp> getApprInfoList() {
		return apprInfoList;
	}
	public void setApprInfoList(List<Budgetapp> apprInfoList) {
		this.apprInfoList = apprInfoList;
	}
	public List<Budgetapp> getApprProList() {
		return apprProList;
	}
	public void setApprProList(List<Budgetapp> apprProList) {
		this.apprProList = apprProList;
	}
	public List<Budgetapp> getApprProHis() {
		return apprProHis;
	}
	public void setApprProHis(List<Budgetapp> apprProHis) {
		this.apprProHis = apprProHis;
	}
	public List<Budgetapp> getApprFlow() {
		return apprFlow;
	}
	public void setApprFlow(List<Budgetapp> apprFlow) {
		this.apprFlow = apprFlow;
	}
	public List<Budgetapp> getApprUnit() {
		return apprUnit;
	}
	public void setApprUnit(List<Budgetapp> apprUnit) {
		this.apprUnit = apprUnit;
	}
	public List<Budgetapp> getAppName() {
		return appName;
	}
	public void setAppName(List<Budgetapp> appName) {
		this.appName = appName;
	}

	public List<Budgetapp> getAppSum() {
		return appSum;
	}

	public void setAppSum(List<Budgetapp> appSum) {
		this.appSum = appSum;
	}

	public Budgetapp getNewBudget() {
		return newBudget;
	}

	public void setNewBudget(Budgetapp newBudget) {
		this.newBudget = newBudget;
	}




	
	
}
