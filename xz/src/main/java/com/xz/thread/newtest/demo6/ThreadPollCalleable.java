package com.xz.thread.newtest.demo6;

import java.util.concurrent.Callable;
/**
 * 接口实现类，作为线程提交的实现 
 * 使用方法返回值
 * @author xz
 *
 */
public class ThreadPollCalleable implements Callable<String>{

	@Override
	public String call() throws Exception {
		// TODO Auto-generated method stub
		return "abc";
	}

}
