package com.xz.useThread;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xz.model.Back_Login;
@Component
public class TestThread implements Runnable{
	@Autowired
	SqlSessionTemplate st1;
	HashMap<String, String> map = new HashMap<>();
	Back_Login bl = new Back_Login();
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i = 0 ; i <10 ; i++ ){
			bl.setUsername("test"+i);
			bl.setPassword("testPass"+i);
//			map.put("username", bl.getUsername());
//			map.put("password", bl.getPassword());

			st1.insert("logReg.insetinto", bl);
			//st.insert(statement, parameter)
			System.out.println(st1);
		}
	}

}
