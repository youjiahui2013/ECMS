package com.cqedu.bean;

import java.io.Serializable;
import java.math.BigDecimal;




public class AbstractFlow implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3192164196293532530L;
	//流程ID
	private Integer fid = null;
    //流程名
	private String fname =  null;
	//流程类型
	private String ftype = null;
	private User user = null;
	//流程最大顺序号
	private Integer maxseqno = null;
	private BigDecimal isdelete = null;
		
	
	public AbstractFlow(){
		
	}





	public AbstractFlow(Integer fid, String fname, String ftype, User user,
			Integer maxseqno, BigDecimal isdelete) {
		super();
		this.fid = fid;
		this.fname = fname;
		this.ftype = ftype;
		this.user = user;
		this.maxseqno = maxseqno;
		this.isdelete = isdelete;
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
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BigDecimal getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(BigDecimal isdelete) {
		this.isdelete = isdelete;
	}






	public void setMaxseqno(Integer maxseqno) {
		this.maxseqno = maxseqno;
	}





	public Integer getMaxseqno() {
		return maxseqno;
	}
}
