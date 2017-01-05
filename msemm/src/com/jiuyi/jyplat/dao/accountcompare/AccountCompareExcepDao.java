package com.jiuyi.jyplat.dao.accountcompare;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.jiuyi.jyplat.entity.accountcompare.AccountCompareExcepInfo;
import com.jiuyi.jyplat.entity.accountcompare.AccountCompareInfo;
import com.jiuyi.jyplat.util.HibernateEntityDao;


@Repository
public class AccountCompareExcepDao extends HibernateEntityDao<AccountCompareExcepInfo> {

	public List<AccountCompareExcepInfo> qurAccountcompareExcep(){
			Criteria criteria = createCriteria();
			return criteria.list();
	}
}
