package com.cqedu.maintenance.user.common.impl;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.cqedu.maintenance.user.common.commonService;


public class commonServiceImpl implements commonService {
      public SqlMapClientTemplate ibatisTemplate=null;

	public void setIbatisTemplate(SqlMapClientTemplate ibatisTemplate) {
		this.ibatisTemplate = ibatisTemplate;
	}
      
}
