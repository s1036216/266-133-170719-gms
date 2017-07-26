<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
public String getSpec(HttpServletRequest request){
	String spec="";
	String name=request.getParameter("name");
	String gender="남";
	String birth=request.getParameter("birthday");
	//String age=String.valueOf(2017-Integer.parseInt(birth));
	//spec=String.format("%s(%s) %s세", name,gender,age);
	return birth;
}
public String root(HttpServletRequest request){
	return request.getContextPath();
}
%>