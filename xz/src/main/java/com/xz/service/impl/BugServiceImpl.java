package com.xz.service.impl;

import java.io.File;
import java.net.URI;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xz.dao.MyOwnDao;
import com.xz.model.Accupload;
import com.xz.model.Back_Login;
import com.xz.model.Debug;
import com.xz.service.BugService;
import com.xz.utils.Xpage;

@Service
public class BugServiceImpl implements BugService{
	@Autowired
	MyOwnDao md;
	@Override
	public HashMap<String, Object> getDeBugService(Debug d) {
		// TODO Auto-generated method stub
		HashMap<String, String> argMap = new HashMap<>();
		HashMap<String, Object> resultMap = new HashMap<>(); 
		Xpage p = new Xpage(Integer.valueOf(d.getRows()),Integer.valueOf(d.getPage()));
		argMap.put("page", p.getRow_beging()+"");
		argMap.put("rows", p.getRow_end()+"");
		argMap.put("sort", d.getSort());
		argMap.put("order", d.getOrder());
		resultMap.put("rows", md.getUseOfList("debug.getDebugList", argMap));
		resultMap.put("total",md.getDataSize("debug.getDebugSize", argMap)); 
		return resultMap;
	}
	@Override
	public void insertIntoBug(Debug d,Accupload ac) {
		// TODO Auto-generated method stub
		int aid = md.insert("debug.acc", ac);//System.out.println(ac.getAtid());
		d.setAcc(ac.getAtid()+"");
		md.insert("debug.insertIntoBug", d);
	}
	@Override
	public Debug showDetail(int qid) {
		// TODO Auto-generated method stub
		return (Debug) md.getDetail("debug.showDetail", qid);
	}
	@Override
	public String getUrl(int atid) {
		// TODO Auto-generated method stub
		
		return (String) md.getDetail("debug.getUrl", atid);
	}
	@Override
	public String delBug(int qid) {
		// TODO Auto-generated method stub
		String symbol = System.getProperty("file.separator");
		String path = System.getProperty("catalina.home");//服务器位置
		String flag = "";
		try{
		
			String url = md.getUrl("debug.getAccUrl",qid);
			System.out.println(url);
			String []str = url.split("/");
			String name =str[str.length-1];
			File f = new File(path+symbol+"webapps"+symbol+"xload"+symbol+"debug"+symbol+name);
			f.delete();
			System.out.println(path+symbol+"webapps"+symbol+"xload"+symbol+"debug"+symbol+name);
			md.delById("debug.delAccUpload",qid);
			md.delById("debug.delBug", qid);
			//System.out.println("-----"+url);
			flag= "true";
		}catch(Exception e){
			e.printStackTrace();
			flag= "false";
		}
		return flag;
	}

}
