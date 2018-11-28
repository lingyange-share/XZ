package com.xz.controller;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.xz.model.Accupload;
import com.xz.model.Back_Login;
import com.xz.model.Debug;
import com.xz.service.BugService;
import com.xz.utils.ImageUploadUtil;

@Controller
@RequestMapping("/system/home")
public class XbugController {
	@Autowired
	private BugService bg;
	@RequestMapping(value="/getBugList")
	@ResponseBody
	public HashMap<String,Object> getDeBugList(Debug d){
		HashMap<String, Object> map = bg.getDeBugService(d);
		return map;
	}
	/**
	 * 多文件上传
	 * @param file 不使用数组即为单文件
	 * @param requet
	 * @param d
	 * @return
	 */
	@RequestMapping(value="/addNewBug")
	public String  addNewBug(@RequestParam("fup") CommonsMultipartFile[] file,HttpServletRequest requet,Debug d){
		//System.out.println(file.getOriginalFilename());
		String path = System.getProperty("catalina.home");//服务器位置
		//String symbol = System.getProperty("file.separator");//分隔符
		String symbol = "/";
		String name = "";
		for (CommonsMultipartFile cf : file) {
			name = System.currentTimeMillis()+cf.getOriginalFilename();
			 String savePath = path+ symbol+"webapps"+symbol+"xload"+symbol+"debug"+symbol+name;
			 System.out.println(savePath);
		        File newfile = new File(savePath);
		        if (!newfile.exists()) {
					newfile.mkdirs();
				}
		        try {
		        		cf.transferTo(newfile);//转移到
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		Accupload ac = new Accupload();
		if(file.length>0){
			String accUrl= requet.getScheme()+"://"+requet.getServerName()+":"+requet.getServerPort()+symbol+"xload"+symbol+"debug"+symbol+name;
			//System.out.println(picUrl);
			ac.setAccname(file[0].getOriginalFilename());
			ac.setAccurl(accUrl);
		}
		
		Back_Login b = (Back_Login) requet.getSession().getAttribute("log_user");
		d.setWhoid(b.getId());
		bg.insertIntoBug(d,ac);
        return "../success.jsp";
	}
	/*
	 * ckcredit 实现上传
	 */
    @RequestMapping("imageUpload")
    public void imageUpload(HttpServletRequest request, HttpServletResponse response) {
        String DirectoryName = "upload/";
        try {
            ImageUploadUtil.ckeditor(request, response, DirectoryName);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("showDetail")
    public String showDetail(int qid ,ModelMap map){
    	map.put("bug", bg.showDetail(qid));
    	return "problem/myBugDetail.jsp";
    }
    @RequestMapping("delbug")
    @ResponseBody
    public String delBug(int qid){
    	System.out.println("cccc");
    	return bg.delBug(qid);
    }
    @RequestMapping(value = "xdownload",method=RequestMethod.GET)
    public void download(String atid,String name,HttpServletResponse response,HttpServletRequest request) throws Exception{
    	String url = bg.getUrl(Integer.valueOf(atid));
    	url = url.replace("\\", "/");
    	System.out.println(url);
    	URL xurl = new URL(url);
    	DataInputStream input  = new DataInputStream(xurl.openStream());
    	//第一步 得输入流 将服务器的图片文件输入至当前程序 中
		//FileInputStream input=new FileInputStream(f);
		//第二步 取得输出流
//		用设置响应的方式下载
		response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(name, "UTF-8")); 
		OutputStream out=response.getOutputStream();
		//第三步 循环两个流 将内容写至浏览器中
		int length = 0;
		byte[] buf = new byte[1024];
		// in.read(buf) 每次读到的数据存放在 buf 数组中
		while ((length = input.read(buf)) != -1) {
			// 在 buf 数组中 取出数据 写到 （输出流）磁盘上
			out.write(buf, 0, length);
		}
		input.close();
		out.close();
    }
}
