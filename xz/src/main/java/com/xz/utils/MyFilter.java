package com.xz.utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xz.model.Back_Login;

public class MyFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
		FilterChain arg2) throws IOException, ServletException {
		
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpServletResponse rep = (HttpServletResponse) arg1;
		String path = req.getRequestURI();
		Back_Login b =(Back_Login) req.getSession().getAttribute("log_user");
		if(path.indexOf("/login") > -1){
			
			arg2.doFilter(arg0, arg1);
			return;
		}
		
		if(path.indexOf("/register.jsp")>-1){//注册页面不过滤
			
            arg2.doFilter(req, rep);
            return;
        }
		if(b instanceof Back_Login){
			  arg2.doFilter(req, rep);
		}else {
			
			rep.sendRedirect("/xz/system/login.jsp");
		}
//		if(b==null
//				&& req.getRequestURI().indexOf("/system/login") == -1){
//			// 没有登录
//			rep.sendRedirect("/xz/system/login.jsp");
//		}else{
//			// 已经登录，继续请求下一级资源（继续访问）
//			arg2.doFilter(arg0, arg1);
////			arg2.doFilter(req, rep);
//
//		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
