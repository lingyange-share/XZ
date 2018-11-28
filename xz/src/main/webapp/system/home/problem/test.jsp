<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../../js/jquery.js"></script>
<script type="text/javascript" src="../../../ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../../../ckeditor/config.js"></script>
<script type="text/javascript">

$(function(){
	$("#cke_204_textInput").attr("type","file");
});
</script>
</head>
<body>
<form action="../addNewBug.do" method="post" enctype="multipart/form-data">
问题描述:<input name="dscr"><br />
详细介绍:<br />
<textarea  id = "editor" name="detail" rows="20" cols="2" class="ckeditor"></textarea>

附件<input type="file" id="fup" name="fup" multiple="multiple"/><br><br><br>

<input type="submit" value="提交">
</form>

</body>
</html>