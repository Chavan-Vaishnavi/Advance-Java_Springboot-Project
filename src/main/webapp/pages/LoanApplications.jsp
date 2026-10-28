
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>SimpleBank - Loan Applications</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f8fc;
            margin: 30px;
            color: #183153;
        }

        h2 {
            text-align: center;
            color: #0866c6;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            margin-top: 25px;
        }

        th {
            background: #0866c6;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #eaf2fc;
        }

        tr:hover {
            background: #d6e8ff;
        }

        .home {
            text-align: center;
            margin-top: 25px;
        }

        a {
            background: #0866c6;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background: #064f9c;
        }
    </style>
</head>

<body>

    <h2>All Loan Applications</h2>

    <table>
        <tr>
            <th>Loan ID</th>
            <th>User ID</th>
            <th>Applicant</th>
            <th>Email</th>
            <th>Loan Type</th>
            <th>Amount (₹)</th>
            <th>Duration</th>
            <th>Monthly Income (₹)</th>
            <th>Purpose</th>
            <th>Status</th>
        </tr>

        <c:forEach items="${loans}" var="loan">
            <tr>
                <td>${loan.loanId}</td>
                <td>${loan.uid}</td>
                <td>${loan.applicantName}</td>
                <td>${loan.email}</td>
                <td>${loan.loanType}</td>
                <td>${loan.loanAmount}</td>
                <td>${loan.durationMonths} months</td>
                <td>${loan.monthlyIncome}</td>
                <td>${loan.purpose}</td>
                <td>${loan.status}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="home">
        <a href="/adminDashboard">Back</a>
    </div>

</body>
</html>
