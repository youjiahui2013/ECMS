package com.cqedu.budget.applist.service.impl;



import java.util.List;

import com.cqedu.budget.applist.bean.Budgetapp;
import com.cqedu.budget.applist.common.service.impl.CommonServiceImpl;
import com.cqedu.budget.applist.service.UserService;


public class UserServiceImpl extends CommonServiceImpl implements UserService{




	public List<Budgetapp> queryList(Budgetapp budgetapp){
		return this.ibatisTemplate.queryForList("applist.query-applist",budgetapp);
	}

	public List<Budgetapp> selectUnit(Budgetapp budgetapp) {
		return this.ibatisTemplate.queryForList("applist.select-unit", budgetapp);
	}

	@Override
	public List<Budgetapp> selectDetlFee(Budgetapp budgetapp) {
		return this.ibatisTemplate.queryForList("applist.select-detail-fee", budgetapp);
	}

	@Override
	public List<Budgetapp> selectAllDetlFee(Budgetapp budgetapp) {
		return this.ibatisTemplate.queryForList("applist.select-all-fee", budgetapp);
	}

	@Override
	public void insertDetlFee(Budgetapp budgetapp) {
		this.ibatisTemplate.insert("applist.insert-budg-apply", budgetapp);
		
	}

	@Override
	public void updateFeeDetl(Budgetapp budgetapp) {
		this.ibatisTemplate.insert("applist.update-detail-fee", budgetapp);
	}

/*	@Override
	public long updateFeeDetl(Budgetapp budgetapp) {
		
		return this.ibatisTemplate.update("applist.update-detl-fee", budgetapp);
	}*/
	//8-31
	public List<Budgetapp> queryApprList(Budgetapp budgetapp){
		return this.ibatisTemplate.queryForList("applist.check-appr", budgetapp);
	}
	
	public List<Budgetapp> queryAppDetail(Budgetapp budgetapp)
	{
		return this.ibatisTemplate.queryForList("applist.check-app-detail", budgetapp);
	}
	
	public List<Budgetapp> queryApprPro(Budgetapp budgetapp){
		return this.ibatisTemplate.queryForList("applist.query-apprpro-his", budgetapp);
	}
	
	public List<Budgetapp> queryApprFlow(Budgetapp budgetapp){
		return this.ibatisTemplate.queryForList("applist.query-appr-flow", budgetapp);
	}
	public List<Budgetapp> queryApprUnit(Budgetapp budgetapp){
		return this.ibatisTemplate.queryForList("applist.query-appr-unit", budgetapp);
	}
	
	public List<Budgetapp> queruAppNum(Budgetapp budgetapp)
	{
		return this.ibatisTemplate.queryForList("applist.select-appnum", budgetapp);
	}

	@Override
	public void insertFid(Budgetapp budgetapp) {
		this.ibatisTemplate.update("applist.insert-flow-id", budgetapp);
		
	}

	@Override
	public Budgetapp selectUid(Budgetapp budgetapp) {
		Budgetapp newBudget=new Budgetapp();
		newBudget=(Budgetapp) this.ibatisTemplate.queryForObject("applist.select_uid", budgetapp);
		return newBudget;
	}

	@Override
	public void insertUuid(Budgetapp budgetapp) {
		this.ibatisTemplate.update("applist.update-arrp-proc", budgetapp);
		
	}

	@Override
	public void insertBidAno(Budgetapp budgetapp) {
		this.ibatisTemplate.insert("applist.insert-bid-ano", budgetapp);
		
	}
}

