<!--  0702_file_processing.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multiple.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%
MultipartRequest multi = new MultipartRequest(
		request,
		"C:\\upload",
		5*1024*1024,
		"utf-8",
		new DefaultFileRenamePolicy(),
		);
String tilte = multi.getParameter("title");
out.println("<h3>"+title+"</h3>");
Enumeration files = multi.getFileNames();
String name = (String) files.nextElement();

String original = multi.getOriginalFileName(name);
String filename = multi.getFilesystemName(name);

out.println("실제 파일 이름:"+origina+<"br">);
out.println("저장 파일 이름:"+filename+"<br>");

%>
