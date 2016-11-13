<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
	<form:form action="register" method="POST"
		modelAttribute="registrationForm">

		<table>
			<tr>
				<td><form:label path="firstName"> First Name </form:label></td>
				<td><form:input path="firstName" /></td>
				<td></td>
			</tr>
			<tr>
				<td><form:label path="lastName"> Last Name </form:label></td>
				<td><form:input path="lastName" /></td>
				<td></td>
			</tr>
			<tr>
				<td><form:label path="email"> Email </form:label></td>
				<td><form:input path="email" /></td>
				<td></td>
			</tr>
			<tr>
				<td><form:label path="firstName"> First Name </form:label></td>
				<td><form:input path="firstName" /></td>
				<td></td>
			</tr>
			<tr>
				<td><form:label path="username"> User Name </form:label></td>
				<td><form:input path="username" /></td>
				<td></td>
			</tr>

			<tr>
				<td><form:label path="password"> Password </form:label></td>
				<td><form:input path="password" /></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
				<td><input type="reset" value="Reset" /></td>
				<td></td>
			</tr>

		</table>
	</form:form>



</body>
</html>