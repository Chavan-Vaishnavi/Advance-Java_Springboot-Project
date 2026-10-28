<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<title>SimpleBank | Registered Users</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

body {
    background: #f1f5f9;
    color: #1e293b;
    min-height: 100vh;
}

/* Navigation Bar */
.navbar {
    background: #102a43;
    color: white;
    padding: 20px 6%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 15px;
}

.logo {
    font-size: 25px;
    font-weight: bold;
}

.logo span {
    color: #38bdf8;
}

.navbar a {
    color: white;
    text-decoration: none;
    background: #2563eb;
    padding: 10px 18px;
    border-radius: 7px;
    transition: 0.3s;
}

.navbar a:hover {
    background: #1d4ed8;
}

/* Main Container */
.container {
    width: 90%;
    max-width: 1150px;
    margin: 45px auto;
}

.heading {
    margin-bottom: 25px;
}

.heading h1 {
    font-size: 30px;
    margin-bottom: 8px;
    color: #102a43;
}

.heading p {
    color: #64748b;
    font-size: 15px;
}

/* Table Card */
.table-card {
    background: white;
    padding: 25px;
    border-radius: 14px;
    box-shadow: 0 5px 20px rgba(15, 23, 42, 0.07);
    overflow-x: auto;
}

table {
    width: 100%;
    border-collapse: collapse;
    min-width: 650px;
}

thead {
    background: #102a43;
    color: white;
}

th {
    padding: 16px;
    text-align: left;
    font-size: 14px;
    letter-spacing: 0.4px;
}

td {
    padding: 15px 16px;
    border-bottom: 1px solid #e2e8f0;
    font-size: 14px;
}

tbody tr:nth-child(even) {
    background: #f8fafc;
}

tbody tr:hover {
    background: #eaf3ff;
    transition: 0.2s;
}

tbody tr:last-child td {
    border-bottom: none;
}

/* User ID */
.user-id {
    color: #2563eb;
    font-weight: bold;
}

/* Empty message */
.empty-message {
    text-align: center;
    padding: 30px;
    color: #64748b;
}

/* Footer */
footer {
    text-align: center;
    color: #64748b;
    padding: 25px;
    margin-top: 35px;
    font-size: 13px;
}

@media (max-width: 600px) {
    .container {
        width: 94%;
        margin: 25px auto;
    }

    .heading h1 {
        font-size: 24px;
    }

    .table-card {
        padding: 12px;
    }
}
</style>
</head>

<body>

<header class="navbar">
    <div class="logo">Simple<span>Bank</span></div>
    <a href="/">← Back to Home</a>
</header>

<main class="container">

    <div class="heading">
        <h1>Registered Users</h1>
        <p>View the list of users registered with SimpleBank.</p>
    </div>

    <div class="table-card">
        <table>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>User Name</th>
                    <th>User Email</th>
                    <th>User Password</th>
                    <th>Action</th>
                </tr>
           </thead>

                <c:forEach items="${temp}" var="e">
                    <tr>
                        <td class="user-id">${e.uid}</td>
                        <td>${e.uname}</td>
                        <td>${e.uemail}</td>
                        <td>${e.upass}</td>
                        <td>
                        	<a href="/edit/${e.uid}" class="btn btn-outline-primary">Edit</a>
                        	<a href="/deleteData/${e.uid}" class="btn btn-outline-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

        </table>
    </div>

</main>

<footer>
    © 2026 SimpleBank | Banking Management System
</footer>

</body>
</html>
