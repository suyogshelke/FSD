<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Registration Successful</h1>
        <p><strong><%= request.getAttribute("message") %></strong></p>
        <p><strong>Name:</strong> <%= request.getAttribute("studentName") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("studentEmail") %></p>
        <p><strong>Course:</strong> <%= request.getAttribute("studentCourse") %></p>
        <p><strong>Gender:</strong> <%= request.getAttribute("studentGender") %></p>
        <a href="index.jsp">Register another student</a>
    </div>
</body>
</html>
