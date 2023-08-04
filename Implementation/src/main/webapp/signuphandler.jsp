<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
// Retrieve form data
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String password = request.getParameter("password");
String cpassword = request.getParameter("cpassword");
String vehicle = request.getParameter("vehicle");
String termLifeInsurance = request.getParameter("term_life_insurance");
String healthInsurance = request.getParameter("health_insurance");
String homeInsurance = request.getParameter("home_insurance");

// Database connection details
String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
String dbUsername = "root";
String dbPassword = "123456";

try {
    // Register the JDBC driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Open a connection to the database
    Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

    // Create a prepared statement to insert the form data
    String sql = "INSERT INTO customer (customer_name,customer_phone,customer_email,customer_paswd) VALUES (?, ?, ?, ?)";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, name);
    statement.setString(2, phone);
    statement.setString(3, email);
    statement.setString(4, password);

    // Execute the statement
    statement.executeUpdate();

    // Close the database connection
    statement.close();
    connection.close();

    // Redirect to a success page
    response.sendRedirect("index.jsp");
} catch (Exception e) {
    // Handle any errors that occur
    e.printStackTrace();
    // Redirect to an error page
    response.sendRedirect("about.jsp");
}
%>
