<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<%@include file="sidebar.html" %>
<form action="updateFilm.do?id=${film.id }" method="POST">
      <label for="title">Title:</label>
      <input type="text" name="title" value="${film.title }">
      <br>
      <label for="desc">Description:</label>
      <input type="text" name="desc" value="${film.desc }">
      <br>
      <label for="releaseYear">Release Year:</label>
      <input type="text" name="releaseYear" value="${film.releaseYear }">
      <br>
      <label for="rentDur">Rental Duration:</label>
      <input type="text" name="rentDur" value="${ film.rentDur}">
      <br>
      <label for="length">Length:</label>
      <input type="text" name="length" value="${film.length }">
      <br>
      <label for="repCost">Replacement Cost:</label>
      <input type="text" name="repCost" value="${film.repCost }">
    
      <input type="submit" value="Update Film">
    </form>

</body>
</html>

