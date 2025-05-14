<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My DevOps App</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">

    <div class="card">
        <div class="card-body">
            <h2 class="card-title text-center">Welcome to My DevOps Application</h2>

            <!-- Form Login -->
            <form action="index.jsp" method="post" class="mt-3">
                <div class="form-group">
                    <label for="username">Enter your username:</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Enter your password:</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>

            <!-- Link נוסף -->
            <div class="mt-4">
                <a href="https://www.google.com" class="btn btn-link">Visit Google</a>
            </div>

            <!-- אזור ההודעות -->
            <div class="mt-4">
                <% 
                    // קבלת הפרמטרים מה-POST
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");

                    // אם לא ריק, בודקים את הכניסה
                    if (username != null && password != null) {
                        if ("user1".equals(username) && "123".equals(password)) {
                %>
                            <div class="alert alert-success">
                                <h4 class="alert-heading">Login Successful!</h4>
                                <p>Hello, <strong><%= username %></strong>! You have logged in successfully.</p>
                            </div>
                <% 
                        } else {
                %>
                            <div class="alert alert-danger">
                                <h4 class="alert-heading">Login Failed!</h4>
                                <p>Invalid username or password. Please try again.</p>
                            </div>
                <% 
                        }
                    }
                %>
            </div>
        </div>
    </div>

</body>
</html>
