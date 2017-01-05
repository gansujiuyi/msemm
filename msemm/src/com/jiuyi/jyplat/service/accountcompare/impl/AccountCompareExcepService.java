package com.jiuyi.jyplat.service.accountcompare.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jiuyi.jyplat.dao.accountcompare.AccountCompareExcepDao;
import com.jiuyi.jyplat.entity.accountcompare.AccountCompareExcepInfo;
import com.jiuyi.jyplat.entity.condo.ContactInfo;
import com.jiuyi.jyplat.entity.system.Operator;
import com.jiuyi.jyplat.service.accountcompare.IAccountCompareExcepService;
import com.jiuyi.jyplat.util.SessionUtil;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;
/**
 * 审核划款实体类  Service层实现类
 * @author wsf
 *
 */
@Service
public class AccountCompareExcepService  implements IAccountCompareExcepService{
	Logger log = Logger.getLogger(AccountCompareExcepService.class);

	
	@Resource
	private AccountCompareExcepDao CompareExcepDao;
	@Override
	public PageFinder<AccountCompareExcepInfo> getPageAccountCompareExcepInfo(AccountCompareExcepInfo CompareExcep, Query query,String flag) throws Exception {
		Criteria criteria = CompareExcepDao.createCriteria();
		if(null != CompareExcep){
			criteria.add(Restrictions.eq("contactNo", CompareExcep.getContactNo()));
		}
		return CompareExcepDao.pagedByCriteria(criteria, query.getPage(), query.getPageSize(), Order.desc("id"));
	}
	
}



