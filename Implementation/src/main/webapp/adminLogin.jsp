<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Muli:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/style-with-prefix.css">
    <style>
        .srouce{
            text-align: center;
            color: #ffffff;
            padding: 10px;
        }
    </style>
</head>
<%
	String errorMessage = (String) session.getAttribute("errorMessage");
	session.removeAttribute("errorMessage");
%>
<body>

    <div class="main-container">
        <div class="form-container">
            <div class="form-body">
                <h2 class="title">Admin Log In</h2>
                <form action="adminLoginhandler" class="the-form">

                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Enter your email">

                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" placeholder="Enter your password">

                    <input type="submit" value="Log In">
                     <div>
			      	<% if (errorMessage != null) { %>
				    <p style="color: red"><strong>Error:</strong> <%= errorMessage %></p>
				  	<% }%>
	      			</div>
                </form>

            </div><!-- FORM BODY-->


        </div><!-- FORM CONTAINER -->
    </div>

</body>
</html>