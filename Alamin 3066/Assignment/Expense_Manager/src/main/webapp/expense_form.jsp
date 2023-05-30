<!DOCTYPE html>
<html>

<head>
    <title>Expense Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Expense Manager</h1>
        <form action="expense_insert.jsp" method="post" class="row g-3">
            <div class="col-md-6">
                <label for="category">Expense Category:</label>
                <select class="form-control" name="category" id="category">
                    <option value="Transportation">Transportation</option>
                    <option value="Food">Food</option>
                    <option value="Fees">Fees</option>
                    <option value="Bills">Bills</option>
                    <option value="Entertainment">Entertainment</option>
                </select>
            </div>
            <div class="col-md-6">
                <label for="date" class="form-label">Date:</label>
                <input type="date" name="date" id="date" class="form-control">
            </div>
            <div class="col-md-12">
                <label class="form-label" for="expenseName">Expense Name:</label>
                <input type="text" name="expenseName" id="expenseName" class="form-control">
            </div>
            <div class="col-md-12">
                <label class="form-label" for="description">Description:</label>
                <textarea name="description" id="description" class="form-control" rows="3"></textarea>
            </div>
            <div class="col-md-12">
                <label class="form-label" for="amount">Amount:</label>
                <input type="text" name="amount" id="amount" class="form-control">
            </div>
            <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-success mt-3">Submit</button>
            </div>
        </form>
    </div>

    <!-- Add Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
