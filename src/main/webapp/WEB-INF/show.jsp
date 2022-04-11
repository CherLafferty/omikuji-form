<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Display Omikuji</title>
</head>
<body>
	<div class="container">
		<div class="row align-items-center">
			<h1> Here's your Omikuji!</h1>
			<div class="card bg-light" style="width: 18rem">
				<h4 class="card-text">
				in
				<c:out value="${num}"/>
				years, you will live in
				<c:out value="${city}"/>
				<br> with
				<c:out value="${person}"/>
				as your roommate, <br>
				<c:out value="${endavor}"/>
				for a living.<br> The next time you see a
				<c:out value="${livingThing}"/>
				,<br> you will have good luck.<br> Also,
				<c:out value="${saying}"/>
				</h4>
			</div>
			<a href="/omikuji">Go Back</a>
		</div>
	</div>
</body>
</html>