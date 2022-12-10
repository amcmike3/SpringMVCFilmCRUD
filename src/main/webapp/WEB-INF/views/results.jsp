<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>States</title>
</head>
<body>

	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>${film.title}</li>
				<li>${film.desc}</li>
				<li>${film.releaseYear}</li>
				<li>${film.langId}</li>
				<li>${film.rentDur}</li>
				<li>${film.rate}</li>
				<li>${film.length}</li>
				<li>${film.repCost}</li>
				<li>${film.rating}</li>
				<li>${film.features}</li>
				<li>${film.genre}</li>
				<li>${film.actors}</li>
				<li>${film.copiesInInventory}</li>

			</ul>
		</c:when>
		<c:otherwise>
			<p>No Film found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>