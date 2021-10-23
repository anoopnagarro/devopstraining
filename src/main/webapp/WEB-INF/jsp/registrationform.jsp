<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration form</title>
</head>
<body>
<h1>Registration Form</h1>
<form:form action="register" method="post" modelAttribute="user" >
Email : <form:input title="email" type="email" path="email" />
<form:button value="Submit" />
</form:form>

</body>
</html>