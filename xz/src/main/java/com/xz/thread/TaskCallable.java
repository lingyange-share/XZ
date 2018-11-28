package com.xz.thread;

import java.util.concurrent.Callable;

public class TaskCallable implements Callable<Object>{//返回类型
	private int id;
	public TaskCallable(int id){
		this.id = id;
	}
	@Override
	public Object call() throws Exception {
		// TODO Auto-generated method stub
		return "result of TaskCallable "+id;
	}

//	return "result of TaskCallable "+id;
}
