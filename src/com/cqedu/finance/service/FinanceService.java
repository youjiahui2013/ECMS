package com.cqedu.finance.service;

import java.util.List;

import com.cqedu.finance.bean.Financebean;

public interface FinanceService {

	List<Financebean> queryFbAppList(Financebean financebean);

	List<Financebean> queryFrAppList(Financebean financebean);

}
