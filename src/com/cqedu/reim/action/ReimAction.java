package com.cqedu.reim.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cqedu.reim.bean.Reimapp;
import com.cqedu.reim.service.ReimService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ReimAction extends ActionSupport {
	/**
	 *  ����ģ���action
	 */
	private static final long serialVersionUID = 23245565541212L;


	
	private Reimapp reimapp=null;
	private ReimService reimService=null;
	
	private List<Reimapp> reimUnitList=null;
	private List<Reimapp> reimFeeDetl=null;
	private List<Reimapp> rFeeDetail=null;
	private List<Reimapp> appList=null;
	private List<Reimapp> apprInfoList=null;
	
	private List<Reimapp> reimApprUnit=null;
	private List<Reimapp> reimApprFlow=null;

	private List<Reimapp> reimApprHis=null;
	private List<Reimapp> rAppName=null;
	private List<Reimapp> reimAppSum=null;


	/**
	 * ��������
	 */
	public String reimApp(){
		this.reimUnitList=this.reimService.reimApp(reimapp);
		this.reimAppSum=this.reimService.queryRAppNum(reimapp);
		return SUCCESS;
	}
	
	/**
	 * �鿴������ϸ�����б�
	 */
	public String queryRFeeDetail(){
		this.reimFeeDetl=this.reimService.queryRFeeDetail(reimapp);
		return SUCCESS;
	}
	
	/**
	 * ������ϸ���ñ�
	 */
	public String rFeeDetail(){
		this.rFeeDetail=this.reimService.rFeeDetail(reimapp);
		return SUCCESS;
	}
	
	/**
	 * �����±���
	 */
	public String insertRDetlFee(){
		this.reimService.updateRFeeDetl(reimapp);
		this.reimService.insertRDetlFee(reimapp);
		this.reimApprFlow=this.reimService.queryReimFlow(reimapp);
		return SUCCESS;
	}
	
	/**
	 * �鿴����������Ԫ
	 */
	public String queryRApprUnit(){
		this.reimApprUnit=this.reimService.queryRApprUnit(reimapp);
		return SUCCESS;
	}

	/**
	 * ���뱨����������
	 */
/*	public String insertRFid(){
		this.userService.insertRFid(reimapp);
		return SUCCESS;
	}*/
	
	/**
	 * ���������������
	 */
/*	public String queryReimFlow(){
		this.reimApprFlow=this.userService.queryReimFlow(reimapp);
		return SUCCESS;
	}*/
	
	/**
	 *�鿴���������嵥  
	 */
	public String queryReimList(){
		this.appList=this.reimService.queryReimList(reimapp);
		return SUCCESS;
	}
	
	/**
	 *�鿴����������Ϣ 
	 */
	public String queryInfoList(){
		ActionContext actionContext=ActionContext.getContext();
		HttpServletRequest request=(HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String rid=request.getParameter("rid");
		Reimapp reimapp=new Reimapp();
		int rrid=Integer.parseInt(rid);
		reimapp.setRid(rrid);
		this.apprInfoList=this.reimService.queryInfoList(reimapp);
		System.out.println(apprInfoList.size());
		return SUCCESS;
	}
	
	/**
	 * �鿴������������
	 */
	public String queryRApprHis(){
		ActionContext actionContext=ActionContext.getContext();
		HttpServletRequest request=(HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		String rid=request.getParameter("rid");
		Reimapp reimapp=new Reimapp();
		int arid=Integer.parseInt(rid);
		reimapp.setRid(arid);
		
		this.rAppName=this.reimService.queryRApprHis(reimapp);
		this.reimApprHis=this.reimService.queryRApprHis(reimapp);
		System.out.println(rAppName.size());
		return SUCCESS;
	}
	
	/**
	 * �������̱��
	 */
	public String insertReimFid(){
		this.reimService.insertReimFid(reimapp);
		return SUCCESS;
	}
	
	/**
	 * �����������
	 */
	public String reimAccessAppr(){
		this.reimService.insertId(reimapp);
		return SUCCESS;
	}
	
	public Reimapp getReimapp() {
		return reimapp;
	}

	public void setReimapp(Reimapp reimapp) {
		this.reimapp = reimapp;
	}



	public List<Reimapp> getAppList() {
		return appList;
	}

	public void setAppList(List<Reimapp> appList) {
		this.appList = appList;
	}

	public List<Reimapp> getApprInfoList() {
		return apprInfoList;
	}

	public void setApprInfoList(List<Reimapp> apprInfoList) {
		this.apprInfoList = apprInfoList;
	}
	public List<Reimapp> getReimUnitList() {
		return reimUnitList;
	}
	public void setReimUnitList(List<Reimapp> reimUnitList) {
		this.reimUnitList = reimUnitList;
	}
	public List<Reimapp> getReimFeeDetl() {
		return reimFeeDetl;
	}
	public void setReimFeeDetl(List<Reimapp> reimFeeDetl) {
		this.reimFeeDetl = reimFeeDetl;
	}

	public List<Reimapp> getRFeeDetail() {
		return rFeeDetail;
	}

	public void setRFeeDetail(List<Reimapp> feeDetail) {
		rFeeDetail = feeDetail;
	}


	public List<Reimapp> getReimApprFlow() {
		return reimApprFlow;
	}

	public void setReimApprFlow(List<Reimapp> reimApprFlow) {
		this.reimApprFlow = reimApprFlow;
	}

	public List<Reimapp> getReimApprUnit() {
		return reimApprUnit;
	}

	public void setReimApprUnit(List<Reimapp> reimApprUnit) {
		this.reimApprUnit = reimApprUnit;
	}

	public List<Reimapp> getReimApprHis() {
		return reimApprHis;
	}

	public void setReimApprHis(List<Reimapp> reimApprHis) {
		this.reimApprHis = reimApprHis;
	}

	public List<Reimapp> getRAppName() {
		return rAppName;
	}

	public void setRAppName(List<Reimapp> appName) {
		rAppName = appName;
	}

	public List<Reimapp> getReimAppSum() {
		return reimAppSum;
	}

	public void setReimAppSum(List<Reimapp> reimAppSum) {
		this.reimAppSum = reimAppSum;
	}

	public ReimService getReimService() {
		return reimService;
	}

	public void setReimService(ReimService reimService) {
		this.reimService = reimService;
	}
	
	

}
