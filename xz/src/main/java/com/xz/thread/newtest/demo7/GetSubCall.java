package com.xz.thread.newtest.demo7;

import java.util.concurrent.Callable;


public class GetSubCall implements Callable<Integer>{
	private int a ;
	public GetSubCall(int a) {
		// TODO Auto-generated constructor stub
		this.a = a;
	}
	@Override
	public Integer call() throws Exception {
		// TODO Auto-generated method stub
		int sum = 0;
		for(int i = 0; i<a;i++){
			sum+=i;
		}
		return sum;
	}
}
