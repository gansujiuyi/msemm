package com.jiuyi.jyplat.dao.accountcompare;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import com.jiuyi.jyplat.entity.accountcompare.AccountCompareInfo;
import com.jiuyi.jyplat.util.HibernateEntityDao;
@Repository
public class AccountCompareDao extends HibernateEntityDao<AccountCompareInfo> {

	
	
	
	public List<AccountCompareInfo> qurAccountcompare(){
		Criteria criteria = createCriteria();
		return criteria.list();
	}
	
	
     
}
