package com.cqedu.reim.bean;

import java.io.Serializable;

public class Reimapp implements Serializable {

	/**
	 * 报销属性表
	 */
	private static final long serialVersionUID = 213121232343424L;
	
	//t_reim_apply
	private Integer rid=null;
	private String rname=null;
	private String rdate=null;
	private String rsdate=null;
	private String redate=null;
	private String rperiod=null;
	private String rproject=null;
	private String rpname=null;
	private Integer rsum=null;
	private String rinfo=null;
	private String rremark=null;
	private String rtype=null;
	private String rpnum=null;
	
	//t_reim_unit
	private Integer runitid=null;
	private String runame=null;
	
	//t_reim_detail
	private Integer rdetlid=null;
	private String rdname=null;
	private String rfeeshow=null;
	private Integer rfeeamount=null;
	
	//t_flow
	private Integer fid=null;
	private String fname=null;
	private String ftype=null;
	
	//t_user
	private Integer sid=null;
	private String name=null;
	
	//t_flowseq
	private Integer flowsequence=null;
	
	//t_reim_appr_his
	private Integer rano=null;
	private String radate=null;
	private String raidea=null;
	private Integer raagree=null;
	private Integer id=null;
	
	private long rappsum=0L;
	
	
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
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
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
	public String getRpname() {
		return rpname;
	}
	public void setRpname(String rpname) {
		this.rpname = rpname;
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
	public Integer getRunitid() {
		return runitid;
	}
	public void setRunitid(Integer runitid) {
		this.runitid = runitid;
	}
	public String getRuname() {
		return runame;
	}
	public void setRuname(String runame) {
		this.runame = runame;
	}
	public Integer getRdetlid() {
		return rdetlid;
	}
	public void setRdetlid(Integer rdetlid) {
		this.rdetlid = rdetlid;
	}
	public String getRdname() {
		return rdname;
	}
	public void setRdname(String rdname) {
		this.rdname = rdname;
	}
	public String getRfeeshow() {
		return rfeeshow;
	}
	public void setRfeeshow(String rfeeshow) {
		this.rfeeshow = rfeeshow;
	}
	public Integer getRfeeamount() {
		return rfeeamount;
	}
	public void setRfeeamount(Integer rfeeamount) {
		this.rfeeamount = rfeeamount;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getFlowsequence() {
		return flowsequence;
	}
	public void setFlowsequence(Integer flowsequence) {
		this.flowsequence = flowsequence;
	}
	public Integer getRano() {
		return rano;
	}
	public void setRano(Integer rano) {
		this.rano = rano;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRadate() {
		return radate;
	}
	public void setRadate(String radate) {
		this.radate = radate;
	}
	public String getRaidea() {
		return raidea;
	}
	public void setRaidea(String raidea) {
		this.raidea = raidea;
	}
	public Integer getRaagree() {
		return raagree;
	}
	public void setRaagree(Integer raagree) {
		this.raagree = raagree;
	}
	public long getRappsum() {
		return rappsum;
	}
	public void setRappsum(long rappsum) {
		this.rappsum = rappsum;
	}

	
	
	

}
