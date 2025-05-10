<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Submission Result</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">

    <div class="alert alert-success">
        <h4 class="alert-heading">Submission Successful!</h4>
        <p>Hello, <strong><%= request.getParameter("username") %></strong>! Your form has been submitted successfully.</p>
        <a href="index.jsp" class="btn btn-primary">Back to Home</a>
    </div>

</body>
</html>
