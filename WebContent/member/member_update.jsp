<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_service.jsp" %>
<%@ include file="member_head.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
	String name=request.getParameter("name");
	String id=request.getParameter("userId");
	String ssn=request.getParameter("ssn");
%>
<div id="container">
	<form action="<%=headRoot(request) %>/member/service_update.jsp" method="get">
	<table id="member_detail_tab">
		<tr>
			<td colspan="2" rowspan="3"><img src="<%=headRoot(request) %>/img/ann.jpg" style="width:100px"></td>
			<td>name</td>
			<td><input type="text" name="name" placeholder="<%=name %>" /></td>
		</tr>
		<tr>
			<td>id</td>
			<td><%=id%></td>
		</tr>
		<tr>
			<td>ssn</td>
			<td><%=ssn %></td>
		</tr>
		<tr>
			<td>phone</td>
			<td colspan="3"></td>
			
		</tr>
		<tr>
			<td>email</td>
			<td colspan="3"></td>
			
		</tr>
		<tr>
			<td>adress</td>
			<td colspan="3"></td>
		</tr>
		<tr>
			<td>major</td>
			<td colspan="3"></td>
		</tr>
		<tr>
			<td>subject</td>
			<td colspan="3"></td>
		</tr>
	
	</table>
	<input type="submit" id="confirm_btn" value="수 정"/>
	<input type="button" onclick="javascript:cancel()" value="취 소"/>
	</form>
</div>
<br /><br /><br /><br />
<script>
function cancel(){
	location.href="<%=headRoot(request) %>/member/member_list.jsp";
}
</script>
<%@ include file="../common/footer.jsp" %>













