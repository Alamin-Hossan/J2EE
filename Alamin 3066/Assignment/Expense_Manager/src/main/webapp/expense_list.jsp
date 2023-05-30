<%@ page import="java.sql.*" %>
<%
    // Connect to the database
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/expensemanager", "root", "");

    // Retrieve the data from the database and sort by date
    String sql = "SELECT * FROM expenses ORDER BY date";
    PreparedStatement stmt = conn.prepareStatement(sql);
    ResultSet rs = stmt.executeQuery();
%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
    <title>Expense Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <h1 class="text-center mt-3 mb-5">Expense Manager</h1>
    <div class="container">

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Category</th>
                    <th scope="col">Date</th>
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Amount</th>
                </tr>
            </thead>
            <tbody>
                <% while (rs.next()) { %>
                <tr>
                    <td scope="row"><%= rs.getString("category") %></td>
                    <td scope="row"><%= rs.getString("date") %></td>
                    <td scope="row"><%= rs.getString("expense_name") %></td>
                    <td scope="row"><%= rs.getString("description") %></td>
                    <td scope="row"><%= rs.getDouble("amount") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>


