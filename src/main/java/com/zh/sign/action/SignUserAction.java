/**
 * 
 */
package com.zh.sign.action;

import org.apache.log4j.Logger;

import com.zh.sign.base.BaseAction;
import com.zh.sign.bean.SignUser;

/**
 * 用户Action
 * @author zhanghao
 * 2015-3-31 
 */
public class SignUserAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = Logger.getLogger(SignUserAction.class);
	
	private SignUser signUser;
	
	public String login(){
		System.out.println("================"+signUser.getUserName());
		if ("admin".equals(signUser.getUserName())) {
			message = "success";
		}else{
			message = "fail";
		}
		return SUCCESS;
	}

	public String test(){
		if ("admin".equals(signUser.getUserName())) {
			message = "success";
		}else{
			message = "fail";
		}
		System.out.println("=============================="+userId);
		return SUCCESS;
	}

	public SignUser getSignUser() {
		return signUser;
	}

	public void setSignUser(SignUser signUser) {
		this.signUser = signUser;
	}

}
