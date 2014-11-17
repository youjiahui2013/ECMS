package com.cqedu.budget.applist.service;

import java.util.List;

import com.cqedu.budget.applist.bean.Budgetapp;

public interface UserService {
	public List<Budgetapp> queryList(Budgetapp budgetapp);
	public List<Budgetapp> selectUnit(Budgetapp budgetapp);
	public List<Budgetapp> selectDetlFee(Budgetapp budgetapp);
	public List<Budgetapp> selectAllDetlFee(Budgetapp budgetapp);
	public void insertDetlFee(Budgetapp budgetapp);
	public void updateFeeDetl(Budgetapp budgetapp);
	//8-31
	public List<Budgetapp> queryApprList(Budgetapp budgetapp);
	public List<Budgetapp> queryApprPro(Budgetapp budgetapp);
	
	public List<Budgetapp> queryApprUnit(Budgetapp budgetapp);
	public List<Budgetapp> queryApprFlow(Budgetapp budgetapp);
	public List<Budgetapp> queruAppNum(Budgetapp budgetapp);
	
	public List<Budgetapp> queryAppDetail(Budgetapp budgetapp);
	public void insertFid(Budgetapp budgetapp);
	public Budgetapp selectUid(Budgetapp budgetapp);
	public void insertUuid(Budgetapp budgetapp);
	public void insertBidAno(Budgetapp budgetapp);
}
