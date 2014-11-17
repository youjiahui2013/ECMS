package com.cqedu.bean;

import java.io.Serializable;

public class AbstractFlowSeq implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4377910735134053464L;
	
	//���̻���ID
    private Integer flowsid;
    //��������
    private Flow flow;
    //���̻���
    private Seq seq;
    //��������˳��
    private Integer flowsequence;
    //��ǰ���̻����Ƿ�ɾ��    
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
