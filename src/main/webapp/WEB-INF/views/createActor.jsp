<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Actor</title>

<link rel="stylesheet" href="main.css">
</head>
<body>
	<h1>Create Actor Below:</h1>
<form action="createAnActor.do" method="POST">
      <label for="title">First name</label>
      <input type="text" name="firstName" value="Casey">
      <br>
      <label for="desc">Last Name</label>
      <input type="text" name="lastName" value="Froehlich">
      <br>
      <input type="submit" value="Create Actor">
    </form>

</body>
</html>
