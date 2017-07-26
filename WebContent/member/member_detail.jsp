<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_service.jsp" %>
<%@ include file="member_head.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
Class.forName(ORACLE_DRIVER);
String id= request.getParameter("id");
String sql="SELECT * FROM Member WHERE id=?";
PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL, USERNAME, PASSWORD).prepareStatement(sql);
pstmt.setString(1, id);
ResultSet rs = pstmt.executeQuery();
if(rs.next()){	
	String userId=rs.getString("id");
	String password=rs.getString("password");
	String name=rs.getString("name");
	String ssn=rs.getString("ssn");
%>
<div id="container">
	<table id="member_detail_tab">
		<tr>
			<td colspan="2" rowspan="3"><img src="<%=headRoot(request) %>/img/ann.jpg" style="width:100px"></td>
			<td>name</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>id</td>
			<td><%=userId %></td>
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
	<button id="list_btn" onclick="javascript:goList()">목 록</button>
	<button id="update_btn" onclick="javascript:goUpdate()">수 정</button>
</div>
<br /><br /><br /><br />
<script>
function goList(){
	location.href="<%=headRoot(request) %>/member/member_list.jsp";
}
function goUpdate(){
	location.href="<%=headRoot(request) %>/member/member_update.jsp?id=<%=userId%>&name=<%=name%>&ssn=<%=ssn%>";
}
</script>
	<%	}%>
<%@ include file="../common/footer.jsp" %>













