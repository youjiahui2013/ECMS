package com.cqedu.bean;

import java.io.Serializable;

public class AbstractSeq implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8796130020324464571L;
	//环节ID
    private Integer sid;
    //审批人ID
    private Integer id;
    //审批人姓名
    private String name;
    //判断审批环节是否删除
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
