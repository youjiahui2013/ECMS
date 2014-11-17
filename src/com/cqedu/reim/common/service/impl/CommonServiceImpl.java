package com.cqedu.reim.common.service.impl;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.cqedu.reim.common.service.CommonService;

public class CommonServiceImpl implements CommonService {
	public SqlMapClientTemplate ibatisTemplate=null;

	public SqlMapClientTemplate getIbatisTemplate() {
		return ibatisTemplate;
	}

	public void setIbatisTemplate(SqlMapClientTemplate ibatisTemplate) {
		this.ibatisTemplate = ibatisTemplate;
	}
	

}
