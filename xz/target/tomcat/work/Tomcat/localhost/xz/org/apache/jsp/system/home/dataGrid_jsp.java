/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-11-06 08:25:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.system.home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class dataGrid_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("  \r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\t<link href=\"");
      out.print(path );
      out.write("/favicon.ico\" rel=\"shortcut icon\">\r\n");
      out.write("\t  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/jquery.min.js\" charset=\"UTF-8\"></script>\r\n");
      out.write("\t  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/jquery.easyui.min.js\" charset=\"UTF-8\"></script>\r\n");
      out.write("\t  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/ckeditor/ckeditor.js\"></script>\r\n");
      out.write("\t  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/ckeditor/config.js\"></script>\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/themes/default/easyui.css\" type=\"text/css\" charset=\"UTF-8\"></link>\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/themes/icon.css\" type=\"text/css\" charset=\"UTF-8\"></link>\r\n");
      out.write("\t  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/locale/easyui-lang-zh_CN.js\"></script>\r\n");
      out.write("\t  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/js/xmethod.js\"></script>\r\n");
      out.write("\t  <script type=\"text/javascript\">\r\n");
      out.write("\t\t\tfunction ccc(){\r\n");
      out.write("\t\t\t\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\t\t   type: \"POST\",\r\n");
      out.write("\t\t\t\t\t\t   url: \"xcx.do\",\r\n");
      out.write("\t\t\t\t\t\t   data:\"\",\r\n");
      out.write("\t\t\t\t\t\t   dataType:\"json\",\r\n");
      out.write("\t\t\t\t\t\t   success: function(msg){\r\n");
      out.write("\t\t\t\t\t\t     console.info(msg);\r\n");
      out.write("\t\t\t\t\t\t   }\r\n");
      out.write("\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tfunction xxx(){\r\n");
      out.write("\t\t\t\t\t\twindow.location.href = \"xxx.do\";\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\tfunction zsAdd(){\r\n");
      out.write("\t\t\t\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\t\t   type: \"POST\",\r\n");
      out.write("\t\t\t\t\t\t   url: \"zsAdd.do\",\r\n");
      out.write("\t\t\t\t\t\t   data:\"\",\r\n");
      out.write("\t\t\t\t\t\t   dataType:\"json\",\r\n");
      out.write("\t\t\t\t\t\t   success: function(msg){\r\n");
      out.write("\t\t\t\t\t\t     \tconsole.info(msg);\r\n");
      out.write("\t\t\t\t\t\t   }\r\n");
      out.write("\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction mytime(){\r\n");
      out.write("\t\t        var a = new Date();\r\n");
      out.write("\t\t        var b = a.toLocaleTimeString();\r\n");
      out.write("\t\t        var c = a.toLocaleDateString();\r\n");
      out.write("\t\t        document.getElementById(\"time1\").innerHTML = c+\"&nbsp\"+b;\r\n");
      out.write("       \t\t }\r\n");
      out.write("   \t\t\t setInterval(function() {mytime();},1000);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction menuman(t,jp){\r\n");
      out.write("\t\t\t\tvar a = $(\"#bdy\").layout('panel','center');\r\n");
      out.write("\t\t\t\ta.panel('refresh',jp);\r\n");
      out.write("\t\t\t\ta.panel('setTitle',$(t).val());\r\n");
      out.write("\t\t\t//\tconsole.info(a.panel(\"options\").href);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\t.tinp{\r\n");
      out.write("\t\t\twidth: 116px;\r\n");
      out.write("\t\t\tbackground-color:#95B8E7;\r\n");
      out.write("\t\t\tmargin-top: 2px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.xdiv{\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\ttext-align: center;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"easyui-layout\" id = \"bdy\" >\r\n");
      out.write("    <div data-options=\"region:'north',title:'当前用户:");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${log_user.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("',split:true\" style=\"height:100px;\">\r\n");
      out.write("    \t<p id=\"time1\" style=\"color: blueviolet;\"></p>\r\n");
      out.write("    \t\r\n");
      out.write("    </div>\r\n");
      out.write("    <div data-options=\"region:'south',title:'South Title',split:true,closed:true\" style=\"height:100px;\">\r\n");
      out.write("    \t<button onclick=\"ccc()\">测试请求---");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${count}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</button>\r\n");
      out.write("    \t<button onclick=\"xxx()\">测试请求2</button>\r\n");
      out.write("    \t<button onclick=\"zsAdd()\">张三++</button>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div data-options=\"region:'east',title:'东方',split:true\" style=\"width:100px;\">\r\n");
      out.write("    \t\r\n");
      out.write("    </div>\r\n");
      out.write("    <div data-options=\"region:'west',title:'菜单列表',split:true\" style=\"width:126px;\">\r\n");
      out.write("    \r\n");
      out.write("    \t<div class=\"easyui-accordion\" data-options=\"fit:true,border:false\">\r\n");
      out.write("    \t\t<div title=\"问题汇总\" class=\"xdiv\">\r\n");
      out.write("    \t\t\t<input class=\"tinp\" value=\"遇到的bug\"  onclick=\"menuman(this,'problem/mybug.jsp')\" type=\"button\" />\r\n");
      out.write("    \t\t\t<input class=\"tinp\" value=\"规则管理\"  type=\"button\" /> \r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t\t<div title=\"前台数据管理\" class=\"xdiv\">\r\n");
      out.write("    \t\t\t<input class=\"tinp\" value=\"管理中心\"  type=\"button\"/> \r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t\t<div title=\"后台数据管理\" class=\"xdiv\">\r\n");
      out.write("    \t\t\t<input class=\"tinp\" value=\"后台用户管理\" onclick=\"menuman(this,'center.jsp')\" type=\"button\"/> \r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t</div>\t\t\r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("    <div data-options=\"region:'center',title:'后台用户管理',href:'problem/mybug.jsp'\"  style=\"background:#eee;\">\r\n");
      out.write("    \t\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
