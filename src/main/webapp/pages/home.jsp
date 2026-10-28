<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SimpleBank | Home</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f8fc;
            color: #183153;
        }

        /* Navigation Bar */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 8%;
            background: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            flex-wrap: wrap;
            gap: 18px;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #0866c6;
        }

        .nav-links {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            gap: 12px;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: bold;
            color: #183153;
            padding: 12px 16px;
            border-radius: 6px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #0866c6;
        }

        .nav-links .nav-register {
            background: #0866c6;
            color: white;
        }

        .nav-links .nav-register:hover {
            background: #064f9c;
            color: white;
        }

        .nav-links .nav-admin {
            background: #0f766e;
            color: white;
        }

        .nav-links .nav-admin:hover {
            background: #115e59;
            color: white;
        }

        /* Hero Section */
        .hero {
            min-height: 75vh;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            padding: 60px 8%;
        }

        .hero-content {
            max-width: 600px;
        }

        .hero-content h1 {
            font-size: 48px;
            line-height: 1.2;
            margin-bottom: 20px;
        }

        .hero-content h1 span {
            color: #0866c6;
        }

        .hero-content p {
            font-size: 18px;
            line-height: 1.7;
            color: #5b6b80;
            margin-bottom: 30px;
        }

        .buttons a {
            display: inline-block;
            padding: 14px 25px;
            margin-right: 12px;
            margin-bottom: 12px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn-primary {
            background: #0866c6;
            color: white;
        }

        .btn-primary:hover {
            background: #064f9c;
        }

        .btn-secondary {
            border: 2px solid #0866c6;
            color: #0866c6;
        }

        .btn-secondary:hover {
            background: #e5efff;
        }

        .hero-card {
            background: white;
            padding: 35px;
            border-radius: 18px;
            width: 340px;
            flex-shrink: 0;
            box-shadow: 0 12px 35px rgba(24, 49, 83, 0.12);
        }

        .hero-card .icon {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero-card h2 {
            margin-bottom: 12px;
        }

        .hero-card p {
            color: #5b6b80;
            line-height: 1.6;
        }

        /* Features */
        .features {
            background: white;
            padding: 55px 8%;
            text-align: center;
        }

        .features h2 {
            font-size: 30px;
            margin-bottom: 35px;
        }

        .feature-container {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .feature {
            flex: 1;
            min-width: 200px;
            max-width: 300px;
            padding: 25px;
            background: #f4f8fc;
            border-radius: 12px;
            transition: 0.3s;
        }

        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(24, 49, 83, 0.08);
        }

        .feature-icon {
            font-size: 35px;
        }

        .feature h3 {
            margin: 12px 0;
        }

        .feature p {
            color: #5b6b80;
            line-height: 1.5;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 22px;
            background: #183153;
            color: white;
        }

        /* Responsive Design */
        @media (max-width: 900px) {
            nav {
                padding: 18px 5%;
            }

            .hero {
                padding: 50px 6%;
            }

            .hero-content h1 {
                font-size: 38px;
            }

            .hero-card {
                width: 300px;
            }
        }

        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                align-items: flex-start;
            }

            .nav-links {
                width: 100%;
                gap: 5px;
            }

            .nav-links a {
                padding: 10px;
                font-size: 14px;
            }

            .hero {
                flex-direction: column;
                align-items: flex-start;
                padding: 45px 6%;
            }

            .hero-content h1 {
                font-size: 36px;
            }

            .hero-card {
                width: 100%;
            }

            .features h2 {
                font-size: 26px;
            }
        }

        @media (max-width: 420px) {
            .nav-links {
                flex-direction: column;
                align-items: stretch;
            }

            .nav-links a {
                text-align: center;
            }

            .hero-content h1 {
                font-size: 32px;
            }

            .hero-content p {
                font-size: 16px;
            }
        }
    </style>
</head>

<body>

    <!-- Navigation -->
    <nav>
       <nav>
	    <div class="logo">SimpleBank</div>
	
	    <div class="nav-links">
	        <a href="/">Home</a>
	        <a href="/login">Login</a>
	        <a href="/ur" class="nav-register">Register Here</a>
	        <a href="/adminlogin" class="nav-admin">Admin Login</a>
	    </div>
	   </nav>
    </nav>

    <!-- Landing Page -->
    <section class="hero">

        <div class="hero-content">
            <h1>Your Money.<br>Your <span>Next Move.</span></h1>

            <p>
                Welcome to SimpleBank — banking made simple.
                Create your account, manage your banking journey,
                and take the next step toward your financial goals.
            </p>

            <div class="buttons">
                <a href="/ur" class="btn-primary">Open an Account</a>
                <a href="/login" class="btn-secondary">Login</a>
            </div>
        </div>

        <div class="hero-card">
            <div class="icon">🏦</div>
            <h2>Banking Made Simple</h2>
            <p>
                A simple and convenient way to begin your banking journey.
                Register today and explore our banking services.
            </p>
        </div>

    </section>

    <!-- Features -->
    <section class="features">
        <h2>Why Choose SimpleBank?</h2>

        <div class="feature-container">

            <div class="feature">
                <div class="feature-icon">🔒</div>
                <h3>Secure Banking</h3>
                <p>Designed with your account security in mind.</p>
            </div>

            <div class="feature">
                <div class="feature-icon">⚡</div>
                <h3>Easy Access</h3>
                <p>Access your banking journey through a simple interface.</p>
            </div>

            <div class="feature">
                <div class="feature-icon">💳</div>
                <h3>Future Ready</h3>
                <p>Build toward account services and loan applications.</p>
            </div>

        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2026 SimpleBank. All rights reserved.</p>
    </footer>

</body>
</html>
