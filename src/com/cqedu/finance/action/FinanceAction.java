package com.cqedu.finance.action;

import java.util.List;

import com.cqedu.finance.bean.Financebean;
import com.cqedu.finance.service.FinanceService;
import com.opensymphony.xwork2.ActionSupport;

public class FinanceAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private Financebean financebean=null;
	private FinanceService financeService=null;
	
	private List<Financebean> fbAppList=null;
	private List<Financebean> frAppList=null;

	/**
	 * 查看预算请款申请
	 */
	public String queryFbAppList(){
		this.fbAppList=this.financeService.queryFbAppList(financebean);
		return SUCCESS;
	}
	
	/**
	 * 查看报销领款申请
	 */
	public String queryFrAppList(){
		this.frAppList=this.financeService.queryFrAppList(financebean);
		return SUCCESS;
	}
	
	public Financebean getFinancebean() {
		return financebean;
	}

	public void setFinancebean(Financebean financebean) {
		this.financebean = financebean;
	}

	public FinanceService getFinanceService() {
		return financeService;
	}

	public void setFinanceService(FinanceService financeService) {
		this.financeService = financeService;
	}

	public List<Financebean> getFbAppList() {
		return fbAppList;
	}

	public void setFbAppList(List<Financebean> fbAppList) {
		this.fbAppList = fbAppList;
	}

	public List<Financebean> getFrAppList() {
		return frAppList;
	}

	public void setFrAppList(List<Financebean> frAppList) {
		this.frAppList = frAppList;
	}
	
	

}
