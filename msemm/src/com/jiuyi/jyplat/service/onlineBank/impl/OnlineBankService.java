package com.jiuyi.jyplat.service.onlineBank.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jiuyi.jyplat.dao.account.AccountManageDao;
import com.jiuyi.jyplat.service.onlineBank.IOnlineBankService;
import com.jiuyi.net.message.onlinebank.EbankLogInfo;

@Service
public class OnlineBankService implements IOnlineBankService{
	private static Logger log = Logger.getLogger(OnlineBankService.class);
	
	@Resource
	private AccountManageDao accountManageDao;
	
	
	
	@Override
	@Transactional(readOnly = true, propagation = Propagation.SUPPORTS)
	public List<EbankLogInfo> queryOnlineBankAmountService(String accoutNo , String balanceDate , String detailStartDate , String detailEndDate )throws Exception {
		log.info("调用核心查询账户信息查询.....");
		List<EbankLogInfo> ebankLogInfos = new ArrayList<EbankLogInfo>();
		return ebankLogInfos;
	}
}
