<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 디렉티브 태그</title>
</head>
<body>
	<%
		//배열
		int [] arry = new int[]{10, 20,30};
	for(int i=0; i<arry.length; i++){
			out.print(arry[i]);
	}
	
	//Arrays 클래스
		int[] arr = new int[]{10, 20,30};
			out.print(Arrays.toString(arr));
	//ArrayList 클래스		
		ArrayList<String> fr = new ArrayList<>();
		fr.add("참외");
		fr.add("수박");
		
		out.print(fr.get(1));
		
		for(String fruit : fr)
			out.print(fr);
	%>
</body>
</html>