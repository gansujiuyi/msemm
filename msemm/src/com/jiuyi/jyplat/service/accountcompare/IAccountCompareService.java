package com.jiuyi.jyplat.service.accountcompare;

import com.jiuyi.jyplat.entity.accountcompare.AccountCompareInfo;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;
		/**
		 * 对异常信息账Service层接口
		 * @author 
		 *
		 */
public interface IAccountCompareService {

	
		/**
		 * 分页查询审批划款记录
		 * @param transferMoney
		 * @param query
		 * @param flag 
		 * @return
		 * @throws Exception
		 */
       public PageFinder<AccountCompareInfo> getPageAccountCompareInfo(AccountCompareInfo Compareinfo ,Query query , String flag)throws Exception;
      	/**
		 * 将购买合同中的对账信息根据合同金额和已交金额的对比，由对比之差在合同金额的1%以内和对比之差在合同金额的1%以外，分别将数据复制一份存放在
		 * 对账正常信息表（accountcompareinfo）和对账异常信息表（accountcompareexcep）中。
		 * @param contactno
		 * @return
		 * heq
		 * @throws Exception
		 */
		public void getPageAccountCompareInfo2()throws Exception;
		
		
		
}
