<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String category = request.getParameter("category");
    String date = request.getParameter("date");
    String expenseName = request.getParameter("expenseName");
    String description = request.getParameter("description");
    double amount = Double.parseDouble(request.getParameter("amount"));

    // Database connection details
    String jdbcUrl = "jdbc:mysql://localhost:3306/expensemanager";
    String dbUser = "root";
    String dbPassword = "";

    // Insert data into database
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
        String query = "INSERT INTO expenses (category, date, expense_name, description, amount) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, category);
        stmt.setString(2, date);
        stmt.setString(3, expenseName);
        stmt.setString(4, description);
        stmt.setDouble(5, amount);
        stmt.executeUpdate();
        conn.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Expense Manager</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Expense Manager</h1>
        <div class="alert alert-success mt-4">
            Expense data inserted successfully!
        </div>
        <div class="text-center mt-4">
            <a href="expense_form.jsp" class="btn btn-primary">Insert Another Expense</a>
            <a href="expense_list.jsp" class="btn btn-secondary ml-2">View Expense List</a>
        </div>
    </div>
    <!-- Add Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
