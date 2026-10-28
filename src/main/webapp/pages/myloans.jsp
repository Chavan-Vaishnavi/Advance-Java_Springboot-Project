
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Loan Applications</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f8fc;
            color: #183153;
            margin: 30px;
        }

        h2 {
            text-align: center;
            color: #0866c6;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background: white;
        }

        th {
            background: #0866c6;
            color: white;
            padding: 12px;
        }

        td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background: #eaf2fc;
        }

        tr:hover {
            background: #d6e8ff;
        }

        p {
            text-align: center;
            margin-top: 25px;
        }

        a {
            display: inline-block;
            background: #0866c6;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background: #064f9c;
        }

        @media (max-width: 600px) {
            body {
                margin: 15px;
            }

            table {
                width: 100%;
            }
        }
    </style>
</head>

<body>

    <h2>My Loan Applications</h2>

    <table>
        <tr>
            <th>Loan ID</th>
            <th>Loan Type</th>
            <th>Amount</th>
            <th>Duration</th>
            <th>Status</th>
        </tr>

        <c:forEach items="${loans}" var="loan">
            <tr>
                <td>${loan.loanId}</td>
                <td>${loan.loanType}</td>
                <td>₹ ${loan.loanAmount}</td>
                <td>${loan.durationMonths} months</td>
                <td>${loan.status}</td>
            </tr>
        </c:forEach>
    </table>

    <p><a href="/loanform">Apply for Another Loan</a></p>
    <p><a href="/login">Logout</a></p>

</body>
</html>
