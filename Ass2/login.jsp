<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
        request.setAttribute("error", "Username and password are required.");
        request.getRequestDispatcher("index.jsp").forward(request, response);
        return;
    }

    if ("admin".equals(username) && "admin123".equals(password)) {
        session.setAttribute("username", username);
        session.setAttribute("loginTime", new java.util.Date());
        response.sendRedirect("welcome.jsp");
    } else {
        request.setAttribute("error", "Invalid username or password.");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>
