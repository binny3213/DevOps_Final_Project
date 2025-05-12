<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Submission Result</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if ("user1".equals(username) && "123".equals(password)) {
%>
        <div class="alert alert-success">
            <h4 class="alert-heading">Login Successful!</h4>
            <p>Hello, <strong><%= username %></strong>! Your form has been submitted successfully.</p>
            <a href="index.jsp" class="btn btn-primary">Back to Home</a>
        </div>
<%
    } else {
%>
        <div class="alert alert-danger">
            <h4 class="alert-heading">Login Failed!</h4>
            <p>Invalid username or password. Please try again.</p>
            <a href="index.jsp" class="btn btn-primary">Back to Login</a>
        </div>
<%
    }
%>

</body>
</html>
