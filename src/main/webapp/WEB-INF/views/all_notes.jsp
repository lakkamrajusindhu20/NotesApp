<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>All Notes</title>
<style>
body {
background-image: url('https://images.unsplash.com/photo-1507842217343-583bb7270b66');
background-size: cover;
font-family: Arial;
}
table {
width: 80%;
background: rgba(255,255,255,0.9);
margin: auto;
margin-top: 50px;
padding: 20px;
border-radius: 10px;
}
th, td {
padding: 12px;
}
a {
padding: 5px 10px;
color: white;
background: #333;
border-radius: 5px;
text-decoration: none;
}
</style>
</head>
<body>
<h2 style="text-align:center; color:white;">All Notes</h2>
<table border="1">
<tr>
<th>ID</th>
<th>Title</th>
<th>Author</th>
<th>Description</th>
<th>Actions</th>
</tr>


<c:forEach var="note" items="${notes}">
<tr>
<td>${note.id}</td>
<td>${note.title_note}</td>
<td>${note.authoroftitle}</td>
<td>${note.notedescription}</td>
<td>
<a href="/notes/edit/${note.id}">Edit</a>
<a href="/notes/delete/${note.id}" style="background:red;">Delete</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>All Notes</title>

<style>
body {
    background-image: url('https://images.unsplash.com/photo-1507842217343-583bb7270b66');
    background-size: cover;
    font-family: Arial;
}

/* Container box */
table {
    width: 80%;
    background: rgba(255,255,255,0.95);
    margin: auto;
    margin-top: 50px;
    padding: 20px;
    border-radius: 10px;
    border-collapse: collapse;
}

/* Table borders */
table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 12px;
    text-align: left;
}

/* Buttons */
.btn {
    padding: 6px 12px;
    color: white;
    border-radius: 5px;
    text-decoration: none;
    font-size: 14px;
}

.add-btn {
    background: #007bff;
}

.edit-btn {
    background: #28a745;
}

.delete-btn {
    background: #dc3545;
}

/* Add button at top */
.top-bar {
    width: 80%;
    margin: auto;
    margin-top: 25px;
    text-align: right;
}
</style>

</head>
<body>

<h2 style="text-align:center; color:white;">All Notes</h2>

<!-- 🔵 Add Note Button -->
<div class="top-bar">
    <a href="/notes/new" class="btn add-btn">+ Add Note</a>
</div>

<table>
<tr>
    <th>ID</th>
    <th>Title</th>
    <th>Author</th>
    <th>Description</th>
    <th>Actions</th>
</tr>

<c:forEach var="note" items="${notes}">
<tr>
    <td>${note.id}</td>
    <td>${note.title_note}</td>
    <td>${note.authoroftitle}</td>
    <td>${note.notedescription}</td>

    <td>
        <a href="/notes/edit/${note.id}" class="btn edit-btn">Edit</a>
        <a href="/notes/delete/${note.id}" class="btn delete-btn">Delete</a>
    </td>
</tr>
</c:forEach>

</table>

</body>
</html>
