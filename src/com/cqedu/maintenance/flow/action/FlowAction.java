package com.cqedu.maintenance.flow.action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cqedu.bean.Flow;
import com.cqedu.bean.FlowSeq;
import com.cqedu.bean.Seq;
import com.cqedu.maintenance.flow.service.FlowService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FlowAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3470456932849581668L;
	
	public Flow flow = new Flow();
	public Seq seq = new Seq();
	public FlowSeq flowSeq = new FlowSeq();
	
	public FlowService flowService = null;
	
	public List<Flow> flowList = new ArrayList<Flow>();
	public List<Flow> flowIDList = new ArrayList<Flow>();
	public List<Seq> seqList =new ArrayList<Seq>();
	public List<FlowSeq> flowSeqList = new ArrayList<FlowSeq>();
 	
	
	
	/**
	 * �����������
	 * @return
	 * @throws Exception
	 */
	
	/*public String addFlow() throws Exception{
		this.flowService.addFlow(flow);
		return SUCCESS;
	}*/
	
	/**
	 * ɾ����������
	 * @return
	 * @throws Exception
	 */
	public String deleteFlow() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
 		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
 		String fids=request.getParameter("fid");
 		int id=new Integer(fids);
 		System.out.println(id);
 		Flow flow=new Flow();
 		flow.setFid(id);
 		
		this.flowService.deleteFlow(flow);
		return SUCCESS;
	}
	
	/**
	 * �޸��������̼�����
	 * @return
	 * @throws Exception
	 */
    public String updateFlow() throws Exception{
    	this.flowService.update(flow,flowSeqList);
    	return SUCCESS;
    }
    
    /**
     * ��ѯ��������
     * @return
     * @throws Exception
     */
    public String queryFlow() throws Exception{
    	this.flowList = this.flowService.queryFlow();
    	return SUCCESS;
    }
	
    /**
     * ����ID��ѯ��������
     * @return
     * @throws Exception
     */
    public String queryFlowID() throws Exception{
    	 ActionContext actionContext = ActionContext.getContext();
 		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
 		String fids=request.getParameter("fid");
 		int id=new Integer(fids);
 		Flow flow=new Flow();
 		flow.setFid(id);
 		
 		try {
			this.flowIDList =this.flowService.queryFlowID(flow);
			this.seqList = this.flowService.querySeqName();
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
 		return SUCCESS;
 		

    }
	/**
	 * ��ѯ�������̻���
	 * @return
	 */
	public String queryFlowSeq() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
 		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
 		String fids=request.getParameter("fid");
 		int id=new Integer(fids);
 		Flow flow=new Flow();
 		flow.setFid(id);
 		
		try {
			this.flowList = this.flowService.queryFlowSeq(flow);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return SUCCESS;
	}
	

	
	/**
	 *  ����������̼�����
	 * @return
	 */
	public String add() throws Exception{
		try {
			this.flowService.add(flow, flowSeqList);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return SUCCESS;
	}

	/**
	 * ��ѯt_seq�е�����������
	 * @return
	 */
	public String querySeqName() throws Exception{
		try {
			this.seqList = this.flowService.querySeqName();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return SUCCESS;
	}
	
	
	
	
	public Flow getFlow() {
		return flow;
	}
	public void setFlow(Flow flow) {
		this.flow = flow;
	}
	public FlowService getFlowService() {
		return flowService;
	}
	public void setFlowService(FlowService flowService) {
		this.flowService = flowService;
	}
	public List<Flow> getFlowList() {
		return flowList;
	}
	public void setFlowList(List<Flow> flowList) {
		this.flowList = flowList;
	}

	public List<Flow> getFlowIDList() {
		return flowIDList;
	}

	public void setFlowIDList(List<Flow> flowIDList) {
		this.flowIDList = flowIDList;
	}
	
	public List<Seq> getSeqList() {
		return seqList;
	}

	public void setSeqList(List<Seq> seqList) {
		this.seqList = seqList;
	}

	public Seq getSeq() {
		return seq;
	}

	public void setSeq(Seq seq) {
		this.seq = seq;
	}

	public FlowSeq getFlowSeq() {
		return flowSeq;
	}

	public void setFlowSeq(FlowSeq flowSeq) {
		this.flowSeq = flowSeq;
	}

	public List<FlowSeq> getFlowSeqList() {
		return flowSeqList;
	}

	public void setFlowSeqList(List<FlowSeq> flowSeqList) {
		this.flowSeqList = flowSeqList;
	}
	
	

}
