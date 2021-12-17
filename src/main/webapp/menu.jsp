<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.user.id==null}">
	<a>Home</a> | <a>About</a> | <a>Contact</a>


</c:if>
<c:if test="${sessionScope.user.id!=null}">

	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/admin-home.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="admin-home.jsp?act=userList">About</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="admin-home.jsp?act=userContacts">Contacts</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="admin-home.jsp?act=userContacts">Add Product</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="admin-home.jsp?act=userContacts">Show Report</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/logout">Logout</a></li>
		</ul>
	</nav>

</c:if>

