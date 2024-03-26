<jsp:include page="include/header.jsp" />


<%@page import="java.util.List"%>
<%@page import="org.studyeasy.entity.User"%>



<h1>List users</h1>
<table border="1">
	<thead>
		<th>User Id</th>
		<th>User name</th>
		<th>Email</th>
	</thead>

	<%
	List<User> listusers = (List) request.getAttribute("listusers");
	for (User _user : listusers) {
		out.print("<tr>");
		out.print("<td>" + _user.getUser_id() + "</td>");
		out.print("<td>" + _user.getUsername() + "</td>");
		out.print("<td>" + _user.getEmail() + "</td>");
		out.print("<tr>");
	}
	%>
</table>

<jsp:include page="include/footer.jsp"></jsp:include>