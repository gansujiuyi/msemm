package com.jiuyi.jyplat.dao.accountcompare;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import com.jiuyi.jyplat.util.HibernateEntityDao;
import com.jiuyi.jyplat.entity.condo.ContactInfo;
@Repository
public class contactDao extends HibernateEntityDao<ContactInfo> {

	
	public List<ContactInfo> qurcontactinfo(){
		Criteria criteria = createCriteria();
		return criteria.list();
	}
}
