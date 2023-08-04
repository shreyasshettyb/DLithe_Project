<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String errorMessage = (String) session.getAttribute("errorMessage");
    session.removeAttribute("errorMessage");

    // Database credentials
    String url = "jdbc:mysql://localhost:3306/db_name"; // Replace with your database URL
    String username = "username"; // Replace with your database username
    String password = "password"; // Replace with your database password

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Create a database connection
        Connection connection = DriverManager.getConnection(url, username, password);

        // Prepare a SQL statement
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");

        // Get user inputs from the form
        String email = request.getParameter("email");
        String password1 = request.getParameter("password");

        // Set the parameters in the SQL statement
        statement.setString(1, email);
        statement.setString(2, password1);

        // Execute the query
        ResultSet resultSet = statement.executeQuery();

        // Check if a matching user was found
        if (resultSet.next()) {
            // User exists, perform desired actions
            // For example, you can redirect to a success page or set user session attributes
            // For now, let's print a success message
            out.println("<p style=\"color: green\"><strong>Login Successful!</strong></p>");
            response.sendRedirect("index.jsp");
        } else {
            // User does not exist or invalid credentials
            // You can set an error message to display on the login page
            errorMessage = "Invalid email or password.";
            session.setAttribute("errorMessage", errorMessage);
            response.sendRedirect("login.jsp"); // Replace with the correct login page URL
        }

        // Close the resources
        resultSet.close();
        statement.close();
        connection.close();
    } catch (Exception e) {
        // Handle any exceptions that occur during the database connection or query execution
        e.printStackTrace();
    }
%>
