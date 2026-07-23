<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Welcome</h1>
        <p>Hello, <%= session.getAttribute("username") %>!</p>
        <p>Logged in at: <%= session.getAttribute("loginTime") %></p>
        <p>Session ID: <%= session.getId() %></p>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
