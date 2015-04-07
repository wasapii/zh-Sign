/**
 * 
 */
package com.zh.sign.base;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author zhanghao
 * 2015-3-31
 */
public class BaseAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	protected String message;
	
	protected String userId;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
