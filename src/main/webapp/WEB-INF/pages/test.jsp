<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<spring:url value="/save" var="saveURL"></spring:url>
	
	<form:form action="${saveURL }" modelAttribute="userform" method="post">
		<form:input path="username" placeholder="${id}" />
		<form:input path="password" placeholder="${password}" />
		<form:input path="fullname" placeholder="name" />
		<button type="submit">ok</button>
	</form:form>
	
	<table border="1">
			<tr>
				<td> username</td>
				<td> password</td>
				<td> fullname</td>
			
			</tr>
		<c:forEach items="${list }" var="account">
			<tr>
				<td> ${account.username }</td>
				<td> ${account.password }</td>
				<td> ${account.fullname }</td>
				<td> ${account.status }</td>
				<td>
					<spring:url value="/update/${account.username }" var="updateURL"></spring:url>
					<a href="${updateURL }">update</a>
				</td>
				<td>
					<spring:url value="/delete/${account.username }" var="deleteURL"></spring:url>
					<a href="${deleteURL }">delete</a>
				</td>
			</tr>
		</c:forEach>
	
	</table>
	
</body>
</html>