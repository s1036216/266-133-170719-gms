<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%
String[] subjects=request.getParameterValues("subject");
String birth=request.getParameter("birthday");

%>
<script>
alert('회원등록 완료 <%=birth%>');
location.href="<%=headRoot(request)%>/index.jsp";
</script>