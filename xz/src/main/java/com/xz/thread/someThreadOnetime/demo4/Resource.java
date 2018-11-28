package com.xz.thread.someThreadOnetime.demo4;
/**
 * 定义资源类
 * 两个线程对 属性进行操作 一个赋值一个打印
 * @author xz
 *
 */
public class Resource {
	public String name;
	public String sex;
	public boolean flag = false;//判断使用
}
