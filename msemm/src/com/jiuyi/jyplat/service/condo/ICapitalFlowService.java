package com.jiuyi.jyplat.service.condo;

import com.jiuyi.jyplat.entity.bankAccoutInfo.AccountFlows;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;

public interface ICapitalFlowService {
	
	/**
	 * 分页查询合同信息
	 * @param contactInfo
	 * @param query
	 * @return
	 * @throws Exception
	 */
	public PageFinder<AccountFlows> getPageAccountFlows(AccountFlows accountFlows , Query query) throws Exception;

}
