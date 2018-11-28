package com.xz.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xz.dao.MyOwnDao;
import com.xz.model.Back_Login;
import com.xz.service.LogAndRegisterService;
import com.xz.utils.Xpage;

@Service
@Transactional
public class LogAndRegisterServiceImpl implements LogAndRegisterService{
	
	@Autowired
	private MyOwnDao mydao;
	
	@Override
	public HashMap<String,Object> getLRList(String str,Back_Login bl) {
		// TODO Auto-generated method stub
		HashMap<String, String> argMap = new HashMap<>();
		Xpage p = new Xpage(Integer.valueOf(bl.getRows()),Integer.valueOf(bl.getPage()));
		argMap.put("page", p.getRow_beging()+"");
		argMap.put("rows", p.getRow_end()+"");
		argMap.put("sort", bl.getSort());
		argMap.put("order", bl.getOrder());
		argMap.put("username",bl.getUsername());
		List<Back_Login> list =mydao.getLoginRegister(str,argMap); 
		HashMap<String, Object> map = new HashMap<>();
		map.put("total", mydao.getDataSize("logReg.getlrListSize", argMap));
		map.put("rows", list);
		return map;
	}

	@Override
	public void zsAdd() {
		// TODO Auto-generated method stub
		mydao.zsAdd("logReg.zsAdd",null);
		mydao.lsRel("logReg.lsRel",null);
	}
	/*
	 * 验证登录
	 */
	@Override
	public Boolean verifyLog(Back_Login b) {
		// TODO Auto-generated method stub
		Boolean c = mydao.verifyLog("logReg.verifyLog",b);
		return c;
	}

}
