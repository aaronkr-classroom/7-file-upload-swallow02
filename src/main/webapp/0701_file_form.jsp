<!--  0701_file_form.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "POST" enctype="multipart/form-data"
action = "0702_file_processing,jsp">
<p>제목: <input type = "text" name = "title"> </p>
<p>파일: <input type = "file" name = "fileName"> </p>
<p><input type = "submit" value = "업로드"> </p> 
</form>
</body>
</html>