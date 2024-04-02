<jsp:include page="include/header.jsp"/>
<%@page import="java.util.List"%>
<%@page import="org.studyeasy.entity.User"%>


<h3>List users</h3>
<table border="1">
<thead>
	<tr>
	 <th>User Id</th>
	 <th>Username</th>
	 <th>Email</th>
	</tr>
</thead>

<tbody>
	<% 
Object attribute = request.getAttribute("listusers");
if (attribute instanceof List) {
    List<User> listusers = (List<User>) attribute;
    for (User _user : listusers) {
        out.print("<tr>");
        out.print("<td>" + _user.getUser_id() + "</td>");
        out.print("<td>" + _user.getUsername() + "</td>");
        out.print("<td>" + _user.getEmail() + "</td>");
        // Other user attributes...
        out.print("</tr>");
    }
} else {
    out.print("<tr><td colspan=\"3\">No users found</td></tr>");
}
%>
</tbody>
</table>



<jsp:include page="include/footer.jsp"/>