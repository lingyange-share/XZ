package com.xz.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.xz.model.Back_Login;
import com.xz.service.LogAndRegisterService;
import com.xz.useThread.TestThread;

@Controller
@RequestMapping("/system/home/")//此处写xz.do就需要拼接 不写 直接 value.do即可
//@RequestMapping("/asd")
//@RequestMapping("/system/home")
@SessionAttributes({"log_user"})
public class LoginAndRegisterController {
	@Autowired
	LogAndRegisterService ls;
	@Autowired 
	TestThread rt;
	@RequestMapping(method=RequestMethod.POST,value="showList")
	@ResponseBody
	public HashMap<String, Object> getUserList(Back_Login bl){
		//BeanUtils.copyProperties(source, target)
		return ls.getLRList("logReg.getlrList",bl);
	}
	@RequestMapping(value="/xcx",method=RequestMethod.POST)
	@ResponseBody
	public void threadControll(){
		
	}
	@RequestMapping(value="/xxx",method=RequestMethod.GET)
	public String cccc(){
		return "../index.jsp";
	}
	@RequestMapping(value="/zsAdd")
	@ResponseBody
	public void zsAdd(){
		ls.zsAdd();
	}
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Boolean verifyLog(Back_Login b,ModelMap map){
		Boolean cb =  ls.verifyLog(b);
		if(cb){
			map.put("log_user", b);
		}
		return cb;
	}
}
