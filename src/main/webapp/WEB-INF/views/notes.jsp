<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Notes Dashboard</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1519681393784-d120267933ba');
            background-size: cover;
            background-position: center;
            height: 100vh;
        }

        .container {
            width: 60%;
            margin: auto;
            margin-top: 120px;
            background: rgba(255,255,255,0.90);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1 {
            margin-bottom: 30px;
            color: #222;
            font-size: 32px;
        }

        .button-box {
            display: flex;
            justify-content: center;
            gap: 25px;
            margin-top: 20px;
        }

        .btn {
            padding: 15px 30px;
            font-size: 18px;
            border-radius: 10px;
            text-decoration: none;
            color: white;
            transition: 0.3s;
        }

        .btn-add { background: #007bff; }
        .btn-view { background: #28a745; }
        .btn-edit { background: #ffc107; color: black; }
        .btn-delete { background: #dc3545; }

        .btn:hover {
            opacity: 0.8;
            transform: scale(1.05);
        }
    </style>

</head>
<body>

<div class="container">
    <h1>Notes Management Dashboard</h1>

    <div class="button-box">

        <!-- 🔵 Add Note -->
        <a href="/notes/new" class="btn btn-add">➕ Add Note</a>

        <!-- 🟢 View All Notes -->
        <a href="/notes/all" class="btn btn-view">📄 View Notes</a>

        <!-- 🟡 Edit Note (User will enter ID on next page) 
        <a href="/notes/edit/" class="btn btn-edit">✏️ Edit Note</a>

         🔴 Delete Note (User will enter ID on next page) 
        <a href="/notes/delete/" class="btn btn-delete">🗑 Delete Note</a>-->

    </div>
</div>

</body>
</html>
