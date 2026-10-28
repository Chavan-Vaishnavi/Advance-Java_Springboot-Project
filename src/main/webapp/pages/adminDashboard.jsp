<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SimpleBank | Admin Dashboard</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

body {
    min-height: 100vh;
    background: #f3f6fb;
    color: #1e293b;
}

/* Navbar */
.navbar {
    background: #102a43;
    color: white;
    padding: 18px 6%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 15px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.12);
}

.logo {
    font-size: 25px;
    font-weight: bold;
    letter-spacing: 1px;
}

.logo span {
    color: #38bdf8;
}

.nav-links {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.nav-links a {
    color: white;
    text-decoration: none;
    padding: 10px 15px;
    border-radius: 7px;
    transition: 0.3s;
    font-size: 14px;
}

.nav-links a:hover {
    background: #2563eb;
}

/* Main content */
.container {
    max-width: 1150px;
    margin: 45px auto;
    padding: 0 22px;
}

.welcome {
    background: linear-gradient(135deg, #1d4ed8, #0f766e);
    color: white;
    padding: 42px;
    border-radius: 18px;
    box-shadow: 0 10px 25px rgba(30, 64, 175, 0.18);
    margin-bottom: 30px;
}

.welcome h1 {
    font-size: 32px;
    margin-bottom: 12px;
}

.welcome p {
    font-size: 16px;
    line-height: 1.7;
    color: #e0f2fe;
}

/* Dashboard cards */
.section-title {
    font-size: 22px;
    margin: 30px 0 18px;
}

.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
    gap: 22px;
}

.card {
    background: white;
    padding: 27px;
    border-radius: 14px;
    box-shadow: 0 4px 16px rgba(15, 23, 42, 0.06);
    border: 1px solid #e5eaf2;
    transition: transform 0.25s, box-shadow 0.25s;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(15, 23, 42, 0.10);
}

.card-icon {
    font-size: 32px;
    margin-bottom: 15px;
}

.card h3 {
    font-size: 19px;
    margin-bottom: 10px;
}

.card p {
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 20px;
}

.btn {
    display: inline-block;
    padding: 11px 17px;
    border-radius: 7px;
    background: #2563eb;
    color: white;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.btn:hover {
    background: #1d4ed8;
}

.btn-secondary {
    background: #e8efff;
    color: #1d4ed8;
}

.btn-secondary:hover {
    background: #d5e2ff;
}

/* Footer */
footer {
    text-align: center;
    padding: 22px;
    margin-top: 55px;
    color: #64748b;
    border-top: 1px solid #e2e8f0;
    font-size: 13px;
}

@media (max-width: 600px) {
    .navbar {
        flex-direction: column;
        align-items: flex-start;
    }

    .nav-links {
        gap: 5px;
    }

    .nav-links a {
        padding: 8px;
    }

    .welcome {
        padding: 27px;
    }

    .welcome h1 {
        font-size: 25px;
    }
}
</style>
</head>

<body>

<!-- Navigation Bar -->
<header class="navbar">
    <div class="logo">Simple<span>Bank</span></div>

    <nav class="nav-links">
        <a href="/">Home</a>
        <a href="/fetchUsers">Show Users</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact Us</a>
        <a href="/adminlogin">Logout</a>
    </nav>
</header>

<!-- Dashboard Content -->
<main class="container">

    <section class="welcome">
        <h1>Welcome to Admin Dashboard 👋</h1>
        <p>
            Manage your banking application from one place.
            View registered users and access the available sections
            of your SimpleBank website.
        </p>
    </section>

    <h2 class="section-title">Dashboard Overview</h2>

    <section class="cards">

        <div class="card">
            <div class="card-icon">👥</div>
            <h3>Manage Users</h3>
            <p>View registered bank users and access their available details.</p>
            <a href="/fetchUsers" class="btn">Show Users</a>
        </div>
		
		<div class="card">
            <div class="card-icon">🏦</div>
            <h3>ViewLoan Applications</h3>
            <p>View applications for loan by users.</p>
            <a href="/admin/loan-applications" class="btn btn-secondary">Go to Loan Applications</a>
        </div>
        
        <div class="card">
            <div class="card-icon">🏦</div>
            <h3>Home</h3>
            <p>Return to the main SimpleBank website.</p>
            <a href="/" class="btn btn-secondary">Go to Home</a>
        </div>

        <div class="card">
            <div class="card-icon">ℹ️</div>
            <h3>About SimpleBank</h3>
            <p>Learn more about the banking application.</p>
            <a href="/about" class="btn btn-secondary">About Us</a>
        </div>

        <div class="card">
            <div class="card-icon">📞</div>
            <h3>Contact Support</h3>
            <p>Find contact information for assistance with the application.</p>
            <a href="/contact" class="btn btn-secondary">Contact Us</a>
        </div>

    </section>

</main>

<footer>
    © 2026 SimpleBank | Secure Banking Management
</footer>

</body>
</html>
