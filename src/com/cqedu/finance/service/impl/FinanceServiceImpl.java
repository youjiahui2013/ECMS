package com.cqedu.finance.service.impl;

import java.util.List;

import com.cqedu.finance.bean.Financebean;
import com.cqedu.finance.common.service.impl.CommonServiceImpl;
import com.cqedu.finance.service.FinanceService;

public class FinanceServiceImpl extends CommonServiceImpl implements FinanceService {

	@Override
	public List<Financebean> queryFbAppList(Financebean financebean) {
		return this.ibatisTemplate.queryForList("finance.query-fb-applist", financebean);
	}

	@Override
	public List<Financebean> queryFrAppList(Financebean financebean) {
		return this.ibatisTemplate.queryForList("finance.query-fr-applist", financebean);
	}

}
