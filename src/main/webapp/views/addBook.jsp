<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adding book here</title>
</head>
<body>

	<h3>Add Book Here</h3>

	<font color='green'>${succMsg}</font>
	<font color='red'>${failMsg}</font>

	<form:form action="saveBook?bookId=${book.bookId}" method="POST" modelAttribute="book">

		<table>
			<tr>
				<td>Book Name:</td>
				<td><form:input path="bookName" /></td>
			</tr>

			<tr>
				<td>Book Price:</td>
				<td><form:input path="bookPrice" /></td>
			</tr>

			<tr>
				<td>Author Name:</td>
				<td><form:input path="authorName" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /></td>
			</tr>

		</table>

	</form:form>

	<a href="viewBooks">View All Books</a>
</body>
</html>