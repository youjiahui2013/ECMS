package com.cqedu.bean;

import java.io.Serializable;

public class AbstractSeq implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8796130020324464571L;
	//����ID
    private Integer sid;
    //������ID
    private Integer id;
    //����������
    private String name;
    //�ж����������Ƿ�ɾ��
    private Integer isdelete;
    
    
    
    
	public AbstractSeq() {
		super();
	}
	



	public AbstractSeq(Integer sid, Integer id, String name, Integer isdelete) {
		super();
		this.sid = sid;
		this.id = id;
		this.name = name;
		this.isdelete = isdelete;
	}




	public Integer getSid() {
		return sid;
	}



	public void setSid(Integer sid) {
		this.sid = sid;
	}




	
	

	public Integer getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getName() {
		return name;
	}








	public void setId(Integer id) {
		this.id = id;
	}








	public Integer getId() {
		return id;
	}

    
    


}
