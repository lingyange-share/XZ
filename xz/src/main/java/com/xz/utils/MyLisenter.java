package com.xz.utils;

import java.util.logging.Logger;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.xz.model.Back_Login;

public class MyLisenter implements HttpSessionListener,HttpSessionAttributeListener{
	private Logger log = Logger.getLogger(MyLisenter.class.toString());
	private int i = 0;
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		//if(se.getSession().getServletContext().getAttribute("log_user") instanceof Back_Login){
			i++;
			//log.info("用户登入");
			System.out.println("用户登入");
			se.getSession().getServletContext().setAttribute("count", i);
		//}

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		//log.info("用户退出");
		System.out.println("用户退出");
		i--;
		System.out.println(se.getSession().getServletContext().getAttribute("log_user"));

		se.getSession().getServletContext().setAttribute("count", i);
	}

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		if(event.getValue() instanceof Back_Login){
			System.out.println(event.getValue());

		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	}
	
}
