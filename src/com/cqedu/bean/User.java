package com.cqedu.bean;

import java.io.Serializable;

public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2313479397461946161L;

	
	

	/*
	 * �û�ID
	 */
	private long userid = 0L;
	/*
	 * �û�����
	 */
	private String password = "";
	/*
	 * ����
	 */
	private String username = null;
	/*
	 * �Ա�
	 */
	private String sexy = "";
	/*
	 * ��������
	 */
	private Department dept=null;
	//private long deptid=0l;

	/*
	 * ����ְλ
	 */
	private long posid=0L;
	/*
	 * Ȩ��
	 */
	private long pno=0L;
	private String posname=null;
	/*
	 * ��¼��ɫ
	 */
	private Role role=null;
	//private long roleid=0l;
	/*
	 * ���ñ�׼
	 */
	private long feeid=0l;
	private String feename=null;
	/*
	 * �칫�绰
	 */
	private String phone = null;
	/*
	 * �����ʼ�
	 */
	private String email = null;
	/*
	 * ��������
	 */
	private String borndate = null;
	/*
	 * ����״��
	 */
	private String ismarried = null;
	/*
	 * ��������
	 */
	private long code=0l;
	/*
	 * �ƶ��绰
	 */
	private String telephone = null;
	/*
	 * ��ϵ��ַ
	 */
	private String address = null;
	/*
	 * ���֤����
	 */
	private long idcardnum = 0l;

	private String pname=null;
	private String prole=null;

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBorndate() {
		return borndate;
	}

	public void setBorndate(String borndate) {
		this.borndate = borndate;
	}

	public String getIsmarried() {
		return ismarried;
	}

	public void setIsmarried(String ismarried) {
		this.ismarried = ismarried;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getIdcardnum() {
		return idcardnum;
	}

	public void setIdcardnum(long idcardnum) {
		this.idcardnum = idcardnum;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username;
	}

	public void setSexy(String sexy) {
		this.sexy = sexy;
	}

	public String getSexy() {
		return sexy;
	}

/*	public void setDeptid(long deptid) {
		this.deptid = deptid;
	}*/

//	public long getDeptid() {
//		return deptid;
//	}

/*	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}

	public long getRoleid() {
		return roleid;
	}*/

	public void setPosid(long posid) {
		this.posid = posid;
	}

	public long getPosid() {
		return posid;
	}

	public void setFeeid(long feeid) {
		this.feeid = feeid;
	}

	public long getFeeid() {
		return feeid;
	}

	public void setCode(long code) {
		this.code = code;
	}

	public long getCode() {
		return code;
	}

	public void setDept(Department dept) {
		this.dept = dept;
	}

	public Department getDept() {
		return dept;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Role getRole() {
		return role;
	}

	


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}

	public long getUserid() {
		return userid;
	}

	public void setPosname(String posname) {
		this.posname = posname;
	}

	public String getPosname() {
		return posname;
	}

	public void setFeename(String feename) {
		this.feename = feename;
	}

	public String getFeename() {
		return feename;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getProle() {
		return prole;
	}

	public void setProle(String prole) {
		this.prole = prole;
	}

	public long getPno() {
		return pno;
	}

	public void setPno(long pno) {
		this.pno = pno;
	}
}
