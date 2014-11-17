package com.cqedu.budget.applist.bean;

import java.io.Serializable;

public class Budgetapp implements Serializable {

	/**
	 * 预算审批列表
	 */
	private static final long serialVersionUID = 32423423423L;

	private long bid = 0L;
	private long uuid=0L;
	private String bname = null;

	private String bdate = null;

	private String bperiod = null;

	private long bsum = 0L;

	private long bunitid = 0L;

	private String bunitname = null;

	private String bdname = null;
	
	private String bremark =null;
	/*
	 * 明细费用id
	 */
	private long bdetlid = 0L;

	private String bdetlname = null;

	private String bfeeshow = null;
	/*
	 * 预算费用数额
	 */
	private long bfeeamount = 0l;
	
	//8-31
	
	
	
	private Integer fid=null;
	private String fname=null;
	private Integer sid=null;
	private Integer flowsequence=null;
	private String uname=null;
	
	
	private long appnum=0L;
	
	/*
	 * 审批同意否
	 */
	private long isagree=0L;
	private String isagreename=null;
	/*
	 * 审批意见
	 */
	private String appraddvice=null;
	
	/*
	 * 审批日期
	 */
	private String adate=null;
	
	
	
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getBperiod() {
		return bperiod;
	}
	public void setBperiod(String bperiod) {
		this.bperiod = bperiod;
	}

	public void setBsum(Integer bsum) {
		this.bsum = bsum;
	}
	public long getBunitid() {
		return bunitid;
	}
	public void setBunitid(long bunitid) {
		this.bunitid = bunitid;
	}
	public String getBunitname() {
		return bunitname;
	}
	public void setBunitname(String bunitname) {
		this.bunitname = bunitname;
	}
	public String getBdname() {
		return bdname;
	}
	public void setBdname(String bdname) {
		this.bdname = bdname;
	}
	public long getBdetlid() {
		return bdetlid;
	}
	public void setBdetlid(long bdetlid) {
		this.bdetlid = bdetlid;
	}
	public String getBdetlname() {
		return bdetlname;
	}
	public void setBdetlname(String bdetlname) {
		this.bdetlname = bdetlname;
	}
	public String getBfeeshow() {
		return bfeeshow;
	}
	public void setBfeeshow(String bfeeshow) {
		this.bfeeshow = bfeeshow;
	}
	public long getBfeeamount() {
		return bfeeamount;
	}
	public void setBfeeamount(long bfeeamount) {
		this.bfeeamount = bfeeamount;
	}

	//8-31	

	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}

	public String getBremark() {
		return bremark;
	}
	public void setBremark(String bremark) {
		this.bremark = bremark;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public Integer getFlowsequence() {
		return flowsequence;
	}
	public void setFlowsequence(Integer flowsequence) {
		this.flowsequence = flowsequence;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public long getAppnum() {
		return appnum;
	}
	public void setAppnum(long appnum) {
		this.appnum = appnum;
	}
	public long getBsum() {
		return bsum;
	}
	public void setBsum(long bsum) {
		this.bsum = bsum;
	}
	public long getBid() {
		return bid;
	}
	public void setBid(long bid) {
		this.bid = bid;
	}
	public void setIsagree(long isagree) {
		this.isagree = isagree;
	}
	public long getIsagree() {
		return isagree;
	}

	public String getAppraddvice() {
		return appraddvice;
	}
	public void setAppraddvice(String appraddvice) {
		this.appraddvice = appraddvice;
	}
	public long getUuid() {
		return uuid;
	}
	public void setUuid(long uuid) {
		this.uuid = uuid;
	}
	public String getIsagreename() {
		return isagreename;
	}
	public void setIsagreename(String isagreename) {
		this.isagreename = isagreename;
	}
	
	





}
