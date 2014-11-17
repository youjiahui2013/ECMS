package com.cqedu.reim.service.impl;

import java.util.List;

import com.cqedu.reim.bean.Reimapp;
import com.cqedu.reim.common.service.impl.CommonServiceImpl;
import com.cqedu.reim.service.ReimService;


public class ReimServiceImpl extends CommonServiceImpl implements ReimService {

	@Override
	public List<Reimapp> queryReimList(Reimapp reimapp){
		return this.ibatisTemplate.queryForList("reim.query-reim-applist", reimapp);
	}

	@Override
	public List<Reimapp> queryInfoList(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.check-reim-appr", reimapp);
	}

	@Override
	public List<Reimapp> reimApp(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.reim-app", reimapp);
	}

	@Override
	public List<Reimapp> queryRFeeDetail(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.query-reim-fee", reimapp);
	}

	@Override
	public List<Reimapp> rFeeDetail(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.reim-fee-list", reimapp);
	}

	@Override
	public void insertRDetlFee(Reimapp reimapp) {
		this.ibatisTemplate.insert("reim.insert-reim-apply", reimapp);
	}

	@Override
	public void updateRFeeDetl(Reimapp reimapp) {
		this.ibatisTemplate.update("reim.update-reim-detail", reimapp);
	}

	@Override
	public List<Reimapp> queryReimFlow(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.query-reim-flow", reimapp);
	}
	
	@Override
	public List<Reimapp> queryRApprUnit(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.query-rappr-unit", reimapp);
	}

	@Override
	public List<Reimapp> queryRApprHis(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.query-rappr-his", reimapp);
	}

	@Override
	public void insertId(Reimapp reimapp) {
		this.ibatisTemplate.insert("reim.insert-rappr-proc", reimapp);
	}

	@Override
	public void insertReimFid(Reimapp reimapp) {
		this.ibatisTemplate.update("reim.insert-reim-fid", reimapp);
		
	}

	@Override
	public List<Reimapp> queryRAppNum(Reimapp reimapp) {
		return this.ibatisTemplate.queryForList("reim.select-reim-appnum", reimapp);

	}

/*	@Override
	public void insertRFid(Reimapp reimapp) {
		this.ibatisTemplate.update("reim.insert-reim-fid", reimapp);
		
	}*/
	
	
	

}
