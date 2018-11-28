package com.xz.test;

import java.util.ArrayList;
import java.util.List;

public class UseTest {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		for(int i =0 ; i<999999999;i++){
			list.add("p");
		}
		System.out.println("---"+Long.valueOf(list.size()));
	}
}
