package com.cqedu.reim.service;

import java.util.List;

import com.cqedu.reim.bean.Reimapp;

public interface ReimService {

	public List<Reimapp> queryReimList(Reimapp reimapp);

	public List<Reimapp> queryInfoList(Reimapp reimapp);

	public List<Reimapp> reimApp(Reimapp reimapp);

	public List<Reimapp> queryRFeeDetail(Reimapp reimapp);

	public List<Reimapp> rFeeDetail(Reimapp reimapp);

	public void updateRFeeDetl(Reimapp reimapp);

	public void insertRDetlFee(Reimapp reimapp);

	public List<Reimapp> queryReimFlow(Reimapp reimapp);

	public List<Reimapp> queryRApprUnit(Reimapp reimapp);

	public List<Reimapp> queryRApprHis(Reimapp reimapp);

	public void insertId(Reimapp reimapp);

	public void insertReimFid(Reimapp reimapp);

	public List<Reimapp> queryRAppNum(Reimapp reimapp);

//	public void insertRFid(Reimapp reimapp);
}
