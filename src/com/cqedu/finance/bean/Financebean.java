package com.cqedu.finance.bean;

import java.io.Serializable;

public class Financebean implements Serializable {

	private static final long serialVersionUID = 1L;

	//t_budg_apply
	private Integer bid=null;
	private String bname=null;
	private String bdate=null;
	private String bperiod=null;
	private Integer bsum=null;
	private String bremark=null;
	
	//t_reim_apply
	private Integer rid=null;
	private String rname=null;
	private String rdate=null;
	private String rsdate=null;
	private String redate=null;
	private String rperiod=null;
	private String rproject=null;
	private Integer rsum=null;
	private String rinfo=null;
	private String rremark=null;
	private String rtype=null;
	private String rpnum=null;
	
	//t_b
	private String bdetlname=null;
	private String bfeeshow=null;
	private long bfeeamount=0l;

	
	
	
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
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
	public Integer getBsum() {
		return bsum;
	}
	public void setBsum(Integer bsum) {
		this.bsum = bsum;
	}
	public String getBremark() {
		return bremark;
	}
	public void setBremark(String bremark) {
		this.bremark = bremark;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRsdate() {
		return rsdate;
	}
	public void setRsdate(String rsdate) {
		this.rsdate = rsdate;
	}
	public String getRedate() {
		return redate;
	}
	public void setRedate(String redate) {
		this.redate = redate;
	}
	public String getRperiod() {
		return rperiod;
	}
	public void setRperiod(String rperiod) {
		this.rperiod = rperiod;
	}
	public String getRproject() {
		return rproject;
	}
	public void setRproject(String rproject) {
		this.rproject = rproject;
	}
	public Integer getRsum() {
		return rsum;
	}
	public void setRsum(Integer rsum) {
		this.rsum = rsum;
	}
	public String getRinfo() {
		return rinfo;
	}
	public void setRinfo(String rinfo) {
		this.rinfo = rinfo;
	}
	public String getRremark() {
		return rremark;
	}
	public void setRremark(String rremark) {
		this.rremark = rremark;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getRpnum() {
		return rpnum;
	}
	public void setRpnum(String rpnum) {
		this.rpnum = rpnum;
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
	
}
