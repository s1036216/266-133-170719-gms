<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.beans.Statement"%>
<%@ page import="com.sun.xml.internal.bind.v2.model.core.ID"%>
<%@ page import="oracle.jdbc.driver.DBConversion"%>
<%@ include file="../member/member_head.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
Class.forName(ORACLE_DRIVER);
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String sql = "SELECT password FROM Member WHERE id=?";
PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL, USERNAME, PASSWORD).prepareStatement(sql);
pstmt.setString(1, id);
ResultSet rs=pstmt.executeQuery();
if(rs.next()){
	String rsPass=rs.getString("password");
	if(rsPass.equals(pass)){
		%>
		<div id="container">
		<table id="index_tab">
			<tr id="index_tab_tr">
				<th><i class="glyphicon glyphicon-user"></i>학생관리</th>
				<th><i class="glyphicon glyphicon-cloud"></i>성적관리</th>
				<th><i class="glyphicon glyphicon-thumbs-up"></i>게시판</th>
			</tr>
			<tr>
				<td>
					<ul class="index-ul">
						<li><a href="<%=headRoot(request)%>/member/member_add.jsp">학생정보 추가</a></li>
						<li><a href="<%=headRoot(request)%>/member/member_list.jsp">학생정보 목록</a></li>
						<li><a href="<%=headRoot(request)%>/member/member_search.jsp">학생 상세정보</a></li>
						<li><a href="<%=headRoot(request)%>/member/member_update.jsp">학생정보 수정</a></li>
						<li><a href="<%=headRoot(request)%>/member/member_delete.jsp">학생정보 삭제</a></li>
					</ul>
				</td>
				<td>
					<ul class="index-ul" >
						<li><a href="<%=headRoot(request)%>/grade/grade_add.jsp">성적 입력</a></li>
						<li><a href="<%=headRoot(request)%>/grade/grade_list.jsp">성적 목록</a></li>
						<li><a href="<%=headRoot(request)%>/grade/grade_detail.jsp">성적 상세</a></li>
						<li><a href="<%=headRoot(request)%>/grade/grade_update.jsp">성적 수정</a></li>
						<li><a href="<%=headRoot(request)%>/grade/grade_delete.jsp">성적 삭제</a></li>
					</ul>
				</td>
				<td>
					<ul class="index-ul">
						<li><a href="<%=headRoot(request)%>/board/board_write.jsp">게시글 쓰기</a></li>
						<li><a href="<%=headRoot(request)%>/board/board_list.jsp">게시글 목록</a></li>
						<li><a href="<%=headRoot(request)%>/board/board_detail.jsp">게시글 상세</a></li>
						<li><a href="<%=headRoot(request)%>/board/board_update.jsp">게시글 수정</a></li>
						<li><a href="<%=headRoot(request)%>/board/board_delete.jsp">게시글 삭제</a></li>
					</ul>
				</td>
			</tr>
		</table>
		</div>
		<%
	}else{
		 %>
<script>
	alert('잘못된 비밀번호');
	location.href="<%=headRoot(request)%>/index.jsp";
</script>
		 <%
		 
	}
}else{
	 %>
<script>
	alert('없는 ID..회원가입 바랍니다');
	location.href="<%=headRoot(request)%>/member/member_add.jsp";
</script>
	 <%
}
%>

<%@ include file="footer.jsp" %>
