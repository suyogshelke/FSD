<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    String gender = request.getParameter("gender");

    if (name == null || name.trim().isEmpty() || email == null || email.trim().isEmpty()) {
        request.setAttribute("errorMessage", "Name and Email are required.");
        request.getRequestDispatcher("index.jsp").forward(request, response);
        return;
    }

    request.setAttribute("studentName", name);
    request.setAttribute("studentEmail", email);
    request.setAttribute("studentCourse", course);
    request.setAttribute("studentGender", gender);
    request.setAttribute("message", "Registration completed successfully!");

    request.getRequestDispatcher("success.jsp").forward(request, response);
%>
