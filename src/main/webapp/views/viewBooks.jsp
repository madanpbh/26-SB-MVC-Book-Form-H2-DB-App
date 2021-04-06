<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script>
	function confirmDelete(){
		return confirm('Are you sure, you want to delete ?');
	}

</script>

</head>
<body>

	<p><font color='green'>${succMsg}</font></p>

	<a href="/">+Add New Book</a>
	<table>
		<thead>
			<tr>
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Book Price</th>
				<th>Author Name</th>
				<th>Action</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${books}" var="b">
				<tr>
					<td>${b.bookId}</td>
					<td>${b.bookName}</td>
					<td>${b.bookPrice}</td>
					<td>${b.authorName}</td>
					<td>
						<a href="editBook?bid=${b.bookId}">Edit</a>
						<a href="deleteBook?bid=${b.bookId}" onclick="return confirmDelete()">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>