/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-10-11 07:52:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("\r\n");
      out.write("    <title>My JSP 'index.jsp' starting page</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("  <link href=\"favicon.ico\" rel=\"");
      out.print(path );
      out.write("/shortcut icon\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/themes/default/easyui.css\" type=\"text/css\"></link>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/themes/icon.css\" type=\"text/css\"></link>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/jquery.min.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/jquery.easyui.min.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/jquery-easyui-1.6.3/locale/easyui-lang-zh_CN.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"");
      out.print(path );
      out.write("/js/xmethod.js\"></script>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <script type=\"text/javascript\">\r\n");
      out.write("\tvar flog ;\r\n");
      out.write("\t\t$(function(){\r\n");
      out.write("\t\t$(\"#dd\").show();\r\n");
      out.write("\t\t//alert(xz.ale(\"ttt\"));\r\n");
      out.write("\t\t\t\tflog = $('#dd').dialog({\r\n");
      out.write("\t\t\t    title: 'ENTER',\r\n");
      out.write("\t\t\t    width: 300,\r\n");
      out.write("\t\t\t    height: 200,\r\n");
      out.write("\t\t\t    closed: false,\r\n");
      out.write("\t\t\t    cache: false,\r\n");
      out.write("\t\t\t    modal: true,\r\n");
      out.write("\t\t\t    buttons:[{text:'注册',iconCls:'icon-add',handler:function(){\r\n");
      out.write("\t\t\t    \t\r\n");
      out.write("\t\t\t    }},\r\n");
      out.write("\t\t\t    \t{text:'登录',iconCls:'icon-tip',handler:function(){\r\n");
      out.write("\t\t\t    \tvar uname = $(\"#uname\").val();\r\n");
      out.write("\t\t\t    \tvar pword = $(\"#pword\").val();\r\n");
      out.write("// \t\t\t    \t{username:uname,password:pword}\r\n");
      out.write("\t\t\t    \t\t$.ajax({\r\n");
      out.write("\t\t\t\t    \t\ttype:\"POST\",\r\n");
      out.write("\t\t\t\t    \t\turl:\"home/login.do\",\r\n");
      out.write("\t\t\t    \t\t\tdata:\"username=\"+uname+\"&password=\"+pword,\r\n");
      out.write("\t\t\t    \t\t\tsuccess:function(msg){\r\n");
      out.write("\t\t\t    \t\t\t\tif(msg){\r\n");
      out.write("\t\t\t    \t\t\t\t\tflog.dialog(\"close\");\r\n");
      out.write("\t\t\t    \t\t\t\t\t\r\n");
      out.write("\t\t\t    \t\t\t\t\twindow.location.href=\"");
      out.print(path );
      out.write("/system/home/dataGrid.jsp\";\r\n");
      out.write("\t\t\t    \t\t\t\t}else{\r\n");
      out.write("\t\t\t    \t\t\t\t\t$.messager.alert('提示','账号或者密码有误');\r\n");
      out.write("\t\t\t    \t\t\t\t}\r\n");
      out.write("\t\t\t    \t\t\t}\r\n");
      out.write("\t\t\t    \t\t});\r\n");
      out.write("\t\t\t    \t\t\r\n");
      out.write("\t\t\t    \t\t\r\n");
      out.write("\t\t\t    \t}}\r\n");
      out.write("\t\t\t    ]\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("   </script>\r\n");
      out.write("   <style type=\"text/css\">\r\n");
      out.write("   \t.inp{\r\n");
      out.write("   \t\twidth:200px;\r\n");
      out.write("   \t\tmargin-top: 20px;\r\n");
      out.write("   \t\t\r\n");
      out.write("   \t}\r\n");
      out.write(" \t.frm1{\r\n");
      out.write(" \t\tmargin-left: 5px;\r\n");
      out.write(" \t}\r\n");
      out.write("   \r\n");
      out.write("   </style>\r\n");
      out.write("  </head>\r\n");
      out.write("  \t\r\n");
      out.write("  <body>\r\n");
      out.write("    <h1 align=\"center\"  style=\"color:threedlightshadow;\">Defense of the Ancients</h1>\r\n");
      out.write("    <p align=\"center\"><button onclick=\"$('#dd').dialog('open')\">点击登录</button></p>\r\n");
      out.write("    <div id=\"dd\"  style=\"display: none\">\r\n");
      out.write("    \t<form id = \"frm1\">\r\n");
      out.write("    \t\t&nbsp;用户名&nbsp;<input name = \"name\" class=\"inp\" id=\"uname\"/></br></br>\r\n");
      out.write("    \t\t&nbsp;密&nbsp;&nbsp;&nbsp;码&nbsp;<input name=\"password\" id=\"pword\" class=\"inp\" type=\"password\" />\r\n");
      out.write("    \t</form>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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
