package com.cqedu.bean;

import java.io.Serializable;

public class AbstractFlowSeq implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4377910735134053464L;
	
	//流程环节ID
    private Integer flowsid;
    //审批流程
    private Flow flow;
    //流程环节
    private Seq seq;
    //环节流程顺序
    private Integer flowsequence;
    //当前流程环节是否被删除    
    private Integer isdelete;
    
    
    
	public AbstractFlowSeq() {
		super();
	}
    


    
    


	public AbstractFlowSeq(Integer flowsid, Flow flow, Seq seq,
			Integer flowsequence, Integer isdelete) {
		super();
		this.flowsid = flowsid;
		this.flow = flow;
		this.seq = seq;
		this.flowsequence = flowsequence;
		this.isdelete = isdelete;
	}







	public Integer getFlowsid() {
		return flowsid;
	}

	public void setFlowsid(Integer flowsid) {
		this.flowsid = flowsid;
	}

	public Flow getFlow() {
		return flow;
	}
	public void setFlow(Flow flow) {
		this.flow = flow;
	}

	public Integer getFlowsequence() {
		return flowsequence;
	}
	public void setFlowsequence(Integer flowsequence) {
		this.flowsequence = flowsequence;
	}
	public Integer getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}





	public void setSeq(Seq seq) {
		this.seq = seq;
	}





	public Seq getSeq() {
		return seq;
	}

	
	
	

}
