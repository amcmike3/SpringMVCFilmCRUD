<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>

<link rel="stylesheet" href="main.css">

</head>
<body>
	<h1>Create Film Below:</h1>
<form action="createFilm.do" method="POST">
      <label for="title">Title:</label>
      <input type="text" name="title" value="">
      <br>
      <br>
      <label for="desc">Description:</label>
      <input type="text" name="desc" value="">
      <br>
      <br>
      <label for="releaseYear">Release Year:</label>
      <input type="text" name="releaseYear" value="">
      <br>
      <br>
      <label for="rentDur">Rental Duration:</label>
      <input type="text" name="rentDur" value="">
      <br>
      <br>
      <label for="length">Length:</label>
      <input type="text" name="length" value="">
      <br>
      <br>
      <label for="repCost">Replacement Cost:</label>
      <input type="text" name="repCost" value="">
    
      <input type="submit" value="Create Film">
    </form>

</body>
</html>
