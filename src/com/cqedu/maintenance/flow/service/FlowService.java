package com.cqedu.maintenance.flow.service;

import java.io.Serializable;
import java.util.List;

import com.cqedu.bean.Flow;
import com.cqedu.bean.FlowSeq;
import com.cqedu.bean.Seq;


public interface FlowService extends Serializable {
	
	public void deleteFlow(Flow flow) throws Exception;
	
	
	
	
	
	public void updateFlow(Flow flow) throws Exception;
	public void deleteFlowSeq(Flow flow)throws Exception;
	public void updateFlowSeq(List<FlowSeq> flowSeqList) throws Exception;
	public void update(Flow flow,List<FlowSeq> flowSeqList) throws Exception;
	
	
	
	
	
	
	public List<Flow> queryFlow() throws Exception;
	public List<Flow> queryFlowID(Flow flow) throws Exception;
	public List<Seq> querySeqName() throws Exception;
	public List<Flow> queryFlowSeq(Flow flow) throws Exception;
	
	
	
	
	
	
	
	public void add(Flow flow,List<FlowSeq> flowSeqList) throws Exception;
	
	public int addFlow(Flow flow)throws Exception ;
	
	public void addFlowSeq(List<FlowSeq> flowSeqList) throws Exception;
	
	

}
