<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member/member_head.jsp" %>
<div id="container">
	<form id="login_box" action="<%=headRoot(request)%>/common/main.jsp" method="get">
		<img src="<%=headRoot(request)%>/img/login.jpg" alt="" /><br />
		<span id="login_id">ID</span>
		<input type="text" name="id" /> <br />
		<span id="login_pass">PASSWORD</span> 
		<input type="text" name="pass" /> <br /><br />
		<input type="submit" value="LOGIN" />
		<input type="reset" value="CANCEL" />
	</form>
</div>
<%@ include file="../common/footer.jsp" %>