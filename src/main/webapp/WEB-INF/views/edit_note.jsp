<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Edit Note</title>
<style>
body {
background-image: url('https://images.unsplash.com/photo-1517430816045-df4b7de11d1d');
background-size: cover;
backdrop-filter: blur(3px);
font-family: Arial;
}
.container {
width: 40%;
background: rgba(255,255,255,0.85);
padding: 20px;
margin: auto;
margin-top: 70px;
border-radius: 15px;
}
</style>
</head>
<body>
<div class="container">
<h2>Edit Note</h2>
<form action="/notes/update/${note.id}" method="post">
<input type="text" name="title_note" value="${note.title_note}" required>
<input type="text" name="authoroftitle" value="${note.authoroftitle}">
<textarea name="notedescription">${note.notedescription}</textarea>


<button type="submit">Update</button>
</form>
</div>
</body>
</html>