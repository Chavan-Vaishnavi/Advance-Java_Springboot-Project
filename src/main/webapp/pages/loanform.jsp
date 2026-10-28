
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>SimpleBank - Apply for Loan</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f8fc;
            color: #183153;
            margin: 0;
            padding: 30px;
        }

        .container {
            width: 400px;
            max-width: 90%;
            margin: 20px auto;
            padding: 25px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px #ccc;
        }

        h2 {
            text-align: center;
            color: #0866c6;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            font-weight: bold;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }

        textarea {
            height: 80px;
            resize: vertical;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #0866c6;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #064f9c;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        a {
            color: #0866c6;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div class="container">

        <h2>Loan Application Form</h2>

        <form action="/submitLoan" method="post">

            <label>Loan Type:</label>
            <select name="loanType" required>
                <option value="">Select Loan Type</option>
                <option value="Personal Loan">Personal Loan</option>
                <option value="Home Loan">Home Loan</option>
                <option value="Education Loan">Education Loan</option>
                <option value="Vehicle Loan">Vehicle Loan</option>
            </select>

            <label>Loan Amount (₹):</label>
            <input type="number" name="loanAmount"
                   min="1" step="0.01" required>

            <label>Duration (months):</label>
            <input type="number" name="durationMonths"
                   min="1" max="360" required>

            <label>Monthly Income (₹):</label>
            <input type="number" name="monthlyIncome"
                   min="0" step="0.01" required>

            <label>Purpose:</label>
            <textarea name="purpose" required></textarea>

            <button type="submit">Submit Application</button>

        </form>

        <p><a href="/myloans">View My Applications</a></p>
        <p><a href="/login">Logout</a></p>

    </div>

</body>
</html>
