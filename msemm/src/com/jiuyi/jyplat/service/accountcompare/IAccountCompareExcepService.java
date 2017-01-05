package com.jiuyi.jyplat.service.accountcompare;


import com.jiuyi.jyplat.entity.accountcompare.AccountCompareExcepInfo;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;

/**
 * 对异常信息账Service层接口
 * @author 
 *
 */
public interface IAccountCompareExcepService {

	/**
	 * 新增审批划款记录
	 * @param id
	 * @throws Exception
	 */
	//public void saveAuditTransferMoney(String houseNo , String amt)throws Exception;

	/**
	 * 分页查询审批划款记录
	 * @param transferMoney
	 * @param query
	 * @param flag 
	 * @return
	 * @throws Exception
	 */
	//888888888888888888888888888888888888888
	//public PageFinder<AccountCompareExcepInfo> getPageAccountCompareExcepInfo(AccountCompareExcepInfo CompareExcep ,  Query query)throws Exception;
	public PageFinder<AccountCompareExcepInfo> getPageAccountCompareExcepInfo(AccountCompareExcepInfo CompareExcep ,  Query query,String flag )throws Exception;
	
	
}
