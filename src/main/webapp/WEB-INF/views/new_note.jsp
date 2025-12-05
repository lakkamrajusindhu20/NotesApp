<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Create Note</title>
<style>
body {
background-image: url('https://images.unsplash.com/photo-1519681393784-d120267933ba');
background-size: cover;
background-repeat: no-repeat;
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
input, textarea {
width: 100%;
padding: 10px;
margin: 10px 0;
border-radius: 8px;
}
button{
padding: 10px 20px;
border-radius: 10px;
background: black;
color: white;
}
</style>
</head>
<body>
<div class="container">
<h2>Create New Note</h2>
<form action="/notes/save" method="post">
<input type="text" name="title_note" placeholder="Title" required>
<input type="text" name="authoroftitle" placeholder="Author">
<textarea name="notedescription" placeholder="Description" required></textarea>


<button type="submit">Save</button>
</form>
</div>
</body>
</html>