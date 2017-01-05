package com.jiuyi.jyplat.service.accountcompare.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.jiuyi.jyplat.dao.accountcompare.AccountCompareDao;
import com.jiuyi.jyplat.dao.accountcompare.AccountCompareExcepDao;
import com.jiuyi.jyplat.dao.accountcompare.contactDao;
import com.jiuyi.jyplat.entity.accountcompare.AccountCompareExcepInfo;
import com.jiuyi.jyplat.entity.accountcompare.AccountCompareInfo;
import com.jiuyi.jyplat.entity.condo.ContactInfo;
import com.jiuyi.jyplat.service.accountcompare.IAccountCompareService;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;
/**
 * 审核划款实体类  Service层实现类
 * @author 
 *heq
 */
@Service("accountCompareService")
public class AccountCompareService implements IAccountCompareService {

	Logger log = Logger.getLogger(AccountCompareService.class);
	
	@Resource
	private AccountCompareDao CompareDao;
	@Resource
	private AccountCompareExcepDao CompareexcepDao;
	@Resource
	private contactDao contactdao;
	
	
	/**
	 * 对账信息的查询的方法实现
	 * @param contactno
	 * @return
	 * @throws Exception
	 * queryaiiduizhangInfo
	 */
	@Override
	public PageFinder<AccountCompareInfo> getPageAccountCompareInfo(AccountCompareInfo Compare, Query query,String flag) throws Exception{
		Criteria criteria = CompareDao.createCriteria();
		if(null!= Compare){
			criteria.add(Restrictions.eq("contactNo", Compare.getContactNo()));
		}
		return CompareDao.pagedByCriteria(criteria, query.getPage(), query.getPageSize(), Order.desc("id"));
	}
	
	
	
//查数据+删数据+插入数据方法的实现  checksaveAccountCompareInfo
	@Override
	public void getPageAccountCompareInfo2() throws Exception {
		//将对账正常表和对账异常表中的数据都delete掉,准备将新数据导入这两个表中。
		//查出购买合同表中的应交与已交的差值小于应交金额的1%的，信息查询出来，再插入到对账信息正常表中.   (查询语句缺少where条件，让其差值小于应交金额的1%)
		List<AccountCompareInfo> CompareInfolist = CompareDao.qurAccountcompare();
		List<AccountCompareExcepInfo> CompareexcepInfolist = CompareexcepDao.qurAccountcompareExcep();
		List<ContactInfo> ContantInfolist = contactdao.qurcontactinfo();

		
		for (int i = 0; i < ContantInfolist.size(); i++) {
			ContactInfo contactinfo = ContantInfolist.get(i);
			AccountCompareExcepInfo accountCompareExcepInfo = new AccountCompareExcepInfo();
			AccountCompareInfo compareinfo = new AccountCompareInfo();
	    	 if(Math.abs(Integer.parseInt(contactinfo.getSuperviseAmt())- Integer.parseInt(contactinfo.getContactAmt()))>Integer.parseInt(contactinfo.getContactAmt())*0.01){
	    		//异常 
				boolean panduan1=false;
	    		 for (int j = 0; j < CompareexcepInfolist.size(); i++) 
	    		 {
	    			if(contactinfo.getContactNo().equals(CompareexcepInfolist.get(j).getContactNo())){
	    				panduan1=true;
	    				break;
	    			  }
	    		 }
	    		 if(panduan1==false){
	    			 accountCompareExcepInfo.setBackCardName(contactinfo.getBackCardName());
		    		 //BeanUtilsBean.getInstance().copyProperties(contactinfo, accountCompareExcepInfo);
		    		 CompareexcepDao.save(accountCompareExcepInfo);
	    		     }
	    	 }else{
	    		//正常 
				boolean panduan2=false;
	    		 for (int j = 0; j < CompareInfolist.size(); i++) 
	    		 {
	    			if(contactinfo.getContactNo().equals(CompareInfolist.get(j).getContactNo())){
	    				panduan2=true;
	    				break;
	    			  }
	    		 }
	    		 if(panduan2==false){
   				  compareinfo.setBackCardName(contactinfo.getBackCardName());
	    		 //BeanUtilsBean.getInstance().copyProperties(contactinfo, accountCompareExcepInfo);
	    		 CompareDao.save(compareinfo);
   		      }
	    	}
		}
	}
}
