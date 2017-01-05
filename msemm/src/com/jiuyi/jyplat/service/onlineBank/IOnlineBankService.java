package com.jiuyi.jyplat.service.onlineBank;

import java.util.List;

import com.jiuyi.net.message.onlinebank.EbankLogInfo;

/**
 * @author Administrator
 *
 */
public interface IOnlineBankService {
	/**
	 * 对公网关查询转账信息
	 * @param accoutNo 账户
	 * @param balanceDate 余额时间
	 * @param detailStartDate 明细开始时间
	 * @param detailEndDate 明细结束时间
	 * @return List<EbankLogInfo>
	 * @throws Exception
	 */
	public List<EbankLogInfo> queryOnlineBankAmountService(String accoutNo , String balanceDate , String detailStartDate , String detailEndDate )throws Exception;

}
