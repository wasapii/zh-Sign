package com.zh.sign.base;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * @author zhanghao
 * 2015-3-31
 */
public class BaseHibernateImpl {

	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
}
