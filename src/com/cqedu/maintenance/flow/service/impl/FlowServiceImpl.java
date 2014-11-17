package com.cqedu.maintenance.flow.service.impl;

import java.util.List;

import com.cqedu.bean.Flow;
import com.cqedu.bean.FlowSeq;
import com.cqedu.bean.Seq;

import com.cqedu.maintenance.flow.service.FlowService;
import com.cqedu.maintenance.user.common.impl.commonServiceImpl;

public class FlowServiceImpl extends commonServiceImpl implements FlowService {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7240657734142649773L;
	
	
	
	
	/**
	 * 删除审批流程
	 */

	@Override
	public void deleteFlow(Flow flow) throws Exception {
		try {
			this.ibatisTemplate.update("flow.delete-flow", flow);
		} catch (Exception e) {
			throw new Exception("删除出错");
		}

	}
	
	/**
	 * 查询审批流程
	 */ 
	@SuppressWarnings("unchecked")
	@Override
	public List<Flow> queryFlow() throws Exception {
				try {
					List<Flow> list = this.ibatisTemplate.queryForList("flow.query-flow");
					return list;
				} catch (Exception e) {
					throw new Exception("查询审批流程出错");
					
				}
		}
	
	
	

	
	
	
	
	
   /**
    * 依据ID查询审批流程
    */
	@SuppressWarnings("unchecked")
	@Override
	public List<Flow> queryFlowID(Flow flow) throws Exception {
		
		try {
			List<Flow> list=this.ibatisTemplate.queryForList("flow.query-flowID", flow);
			return list;	
		} catch (Exception e) {
			throw new Exception("依据ID查询出错");
		}
	}


/**
 * 查询t_seq中的已有审批人
 */
@SuppressWarnings("unchecked")
@Override
public List<Seq> querySeqName() throws Exception {
	
	try {
		return this.ibatisTemplate.queryForList("flow.select-seqName");
	} catch (Exception e) {
		throw new Exception("查询出错");
	}
}



@SuppressWarnings("unchecked")
@Override
public List<Flow> queryFlowSeq(Flow flow) throws Exception {
	try {
		List<Flow> list = this.ibatisTemplate.queryForList("flow.select-flowSeq",flow);
		return list;
	} catch (Exception e) {
		throw new Exception("查询出错");
	}
}






/**
 * 添加审批流程及流程环节
 */
@Override
public void add(Flow flow, List<FlowSeq> flowSeqList) throws Exception {
	flow.setMaxseqno(flowSeqList.size());
	int fid = this.addFlow(flow);
	for (FlowSeq flowSeq:flowSeqList){
		flowSeq.setFlow(new Flow());
		flowSeq.getFlow().setFid(fid);
	}
	this.addFlowSeq(flowSeqList);
}

/**
 * 添加流程环节
 */
@Override
public void addFlowSeq(List<FlowSeq> flowSeqList) throws Exception {
	try {
		System.out.println("flowSeqList.size()"+"-------->"+flowSeqList.size());
		for(int i=0;i<flowSeqList.size();i++){
			this.ibatisTemplate.insert("flow.add-flowSeq", flowSeqList.get(i));
		}
	} catch (Exception e) {
		System.out.println(e.toString());
		throw new Exception("添加流程环节出错");
	}
}

/**
 * 添加审批流程
 */

@Override
public int addFlow(Flow flow) throws Exception {
	
	try {
		int flowid =(Integer) this.ibatisTemplate.insert("flow.add-flow", flow);
		return flowid;
	} catch (Exception e) {
		System.out.println(e.toString());
		throw new Exception("添加审批流程出错");
	}
	
}






/**
 * 修改审批流程
 */
@Override
public void updateFlow(Flow flow) throws Exception {
	
		try {
			this.ibatisTemplate.update("flow.update-flow",flow);
		} catch (Exception e) {
			System.out.println(e.toString());
			throw new Exception("修改出错");
		}
	
}


/**
 * 删除右边框
 */
@Override
public void deleteFlowSeq(Flow flow) throws Exception {
	try {
		this.ibatisTemplate.delete("flow.delete-flowSeq",flow);
	} catch (Exception e) {
		throw new Exception("删除右边框出错");
	}
	
}




/**
 * 修改审批流程及环节
 */
@Override
public void update(Flow flow, List<FlowSeq> flowSeqList) throws Exception {
	flow.setMaxseqno(flowSeqList.size());
	System.out.println("flowSeqList.size()"+"----->"+flowSeqList.size());
	updateFlow(flow);
	deleteFlowSeq(flow);
	updateFlowSeq(flowSeqList);
	
}

/**
 * 修改流程环节
 */
@Override
public void updateFlowSeq(List<FlowSeq> flowSeqList) throws Exception {
	for(int i=0;i<flowSeqList.size();i++)
		this.ibatisTemplate.update("flow.update-flowSeq", flowSeqList.get(i));
	
}




}
