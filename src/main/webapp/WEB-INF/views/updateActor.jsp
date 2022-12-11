<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Actor</title>
</head>
<body>

<form action="updateActor.do?id=${actor.id }" method="POST">
		<label>${actor.id }</label>
      <label for="title">First Name</label>
      <input type="text" name="firstName" value="${actor.firstName }">
      <br>
      <label for="desc">Last Name</label>
      <input type="text" name="lastName" value="${actor.lastName }">
      <br>
      <label for="releaseYear">Films:</label>
      <p>${actor.films }</p>

      
    
      <input type="submit" value="Update Actor">
    </form>

</body>
</html>