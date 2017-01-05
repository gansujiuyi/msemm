package com.jiuyi.jyplat.service.condo.impl;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.jiuyi.jyplat.dao.bankAccountInfo.AccountFlowsDao;
import com.jiuyi.jyplat.entity.bankAccoutInfo.AccountFlows;
import com.jiuyi.jyplat.entity.system.Operator;
import com.jiuyi.jyplat.service.condo.ICapitalFlowService;
import com.jiuyi.jyplat.util.SessionUtil;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;


@Service("capitalFlowService")
public class CapitalFlowService implements ICapitalFlowService {
	
	@Resource
	private AccountFlowsDao accountFlowsDao; 

	@Override
	public PageFinder<AccountFlows> getPageAccountFlows(
			AccountFlows accountFlows, Query query) throws Exception {
		Criteria criteria = accountFlowsDao.createCriteria();
		Operator operator = SessionUtil.getOperator();
		if(accountFlows != null){
			if(accountFlows.getTransactionSeqNum() != null && !"".equals(accountFlows.getTransactionSeqNum().trim())){
				criteria.add(Restrictions.eq("transactionSeqNum", accountFlows.getTransactionSeqNum().trim()));
			}
		}
		return accountFlowsDao.pagedByCriteria(criteria, query.getPage(), query.getPageSize(), Order.desc("transactionDate"));
	}

}
