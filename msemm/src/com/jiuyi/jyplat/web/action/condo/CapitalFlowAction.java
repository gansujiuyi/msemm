package com.jiuyi.jyplat.web.action.condo;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import com.jiuyi.jyplat.authority.AuthName;
import com.jiuyi.jyplat.entity.bankAccoutInfo.AccountFlows;
import com.jiuyi.jyplat.entity.condo.ContactInfo;
import com.jiuyi.jyplat.entity.system.Operator;
import com.jiuyi.jyplat.entity.system.Role;
import com.jiuyi.jyplat.service.bankAccoutInfo.IAccountFlowsService;
import com.jiuyi.jyplat.service.condo.ICapitalFlowService;
import com.jiuyi.jyplat.util.SessionUtil;
import com.jiuyi.jyplat.web.action.base.BaseActionSupport;
import com.jiuyi.jyplat.web.page.PageFinder;
import com.jiuyi.jyplat.web.page.Query;

/***
 * 资金流水审批
 * 
 * @author baizilin
 * 
 */

@Namespace("contractContinual")
public class CapitalFlowAction extends BaseActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8088783259112606263L;

	Logger log = Logger.getLogger(CapitalFlowAction.class);
	
	@Resource
	private ICapitalFlowService capitalFlowService;
	@Resource
	private IAccountFlowsService accountFlowsService;

	private AccountFlows accountFlows;

	private List<AccountFlows> flows;
	
	private String forSearch;
	
	private PageFinder<AccountFlows>  pageFinder;	//分页对象
	private Query	query;	//分页查询对象
	private Role role;
	private String messgae;

	/**
	 * 资金流水展现页面
	 * 
	 * @return
	 */
	@AuthName
	@Action(value = "/contractContinualView", results = {
			@Result(name = SUCCESS, location = "condo/contractContinualView.jsp"),
			@Result(name = INPUT, location = "base/error.jsp") })
	public String ContractContinual() {

		try {
			if (forSearch != null && forSearch.trim().equals("true")){
				query = new Query();
			}	
			Operator operator_1 = SessionUtil.getOperator();
			 role = operator_1.getRole();
			pageFinder = capitalFlowService.getPageAccountFlows(accountFlows, query == null? new Query() : query);
		} catch (Exception e) {
			log.error("分页查询购买合同信息"+e.getMessage(), e);
			this.addActionMessage("分页查询购买合同信息");
			return INPUT;
		}
		return SUCCESS;

	}
	/***
	 * 根据合同号查询合同信息
	 * 
	 * @return
	 */
	@AuthName
	@Action(value = "/AuditingAccFlows", results = { @Result(name = SUCCESS, type = "json", params = {
			"includeProperties", "messgae" }) })
	public String AuditingAccFlows() {
		try {
			accountFlowsService.updateAccountFlowSattus(accountFlows.getId());
			messgae = "true";
		} catch (Exception e) {
			messgae = "false";
			log.equals("审批流水失败" + e.getMessage());
			return INPUT;
		}
		return SUCCESS;
	}

	public AccountFlows getAccountFlows() {
		return accountFlows;
	}

	public void setAccountFlows(AccountFlows accountFlows) {
		this.accountFlows = accountFlows;
	}

	public List<AccountFlows> getFlows() {
		return flows;
	}

	public void setFlows(List<AccountFlows> flows) {
		this.flows = flows;
	}

	public String getForSearch() {
		return forSearch;
	}

	public void setForSearch(String forSearch) {
		this.forSearch = forSearch;
	}

	public PageFinder<AccountFlows> getPageFinder() {
		return pageFinder;
	}

	public void setPageFinder(PageFinder<AccountFlows> pageFinder) {
		this.pageFinder = pageFinder;
	}

	public Query getQuery() {
		return query;
	}

	public void setQuery(Query query) {
		this.query = query;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	public String getMessgae() {
		return messgae;
	}
	public void setMessgae(String messgae) {
		this.messgae = messgae;
	}

}
