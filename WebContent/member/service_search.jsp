<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String option=request.getParameter("option");
String search=request.getParameter("search");
switch(option){
	case "id": 
		 %>
<script>
	location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=search%>";
</script>
		 <%
		break;
	case "name":
		 %>
<script>
	location.href="<%=request.getContextPath()%>/member/member_list.jsp?name=<%=search%>";
</script>
		 <%		
		break;
}
%>