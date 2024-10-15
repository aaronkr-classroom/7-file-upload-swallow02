<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "org.apache.commons.fileupload2.*" %>
<%@page import = "java.io.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Data Printing</title>
</head>
<body>
<%
String path = "C:\\upload";
DiskFileUpload upload = new DiskFileUpload();
upload.setSizeMax(1000000);
upload.setSizeThreshold(4096);
upload.setRepositoryPath(path);

list items = upload.parseRequest(request);
Iterator params = items.iterator();

while(params.hasNext()){
	FileItem item = (FileItem) params.next();
	
	if(item.isFormField()){
		String name = item.getFieldName();
		String value = item.getString("utf-8");
		out.println(name + "= " +value +"<br>");
		
	} else{
		String fileFieldName = item.getFieldName();
		String fileName = item.getName();
		String contentType = item.getContentType();
		
		fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
	    long fileSize = item.getSize();
	    File file = new File(path +"/"+fileName);
	    item.write(file);
	    
	    out.println("--------------------------<br>");
	}
}
%>
</body>
</html>