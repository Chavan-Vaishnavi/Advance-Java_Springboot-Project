<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SimpleBank | Admin Login</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background: #0f0f1a;
            color: white;
        }

        .bg-blob {
            position: fixed;
            border-radius: 50%;
            filter: blur(100px);
            opacity: 0.4;
            z-index: -1;
        }

        .blob-one {
            width: 400px;
            height: 400px;
            background: #6c3bdb;
            top: -100px;
            left: -100px;
        }

        .blob-two {
            width: 350px;
            height: 350px;
            background: #1dbfe0;
            bottom: -100px;
            right: -80px;
        }

        .login-container {
            width: 100%;
            max-width: 950px;
            min-height: 550px;
            display: flex;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 24px;
            background: rgba(255, 255, 255, 0.04);
            box-shadow: 0 25px 70px rgba(0, 0, 0, 0.4);
        }

        /* Left side */

        .welcome-section {
            width: 50%;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background: linear-gradient(135deg, #6c3bdb, #e94590, #1dbfe0);
            background-size: 200% 200%;
            animation: gradientMove 8s ease infinite;
        }

        .bank-icon {
            font-size: 55px;
            margin-bottom: 25px;
        }

        .welcome-section h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .welcome-section p {
            font-size: 15px;
            line-height: 1.8;
            color: rgba(255, 255, 255, 0.9);
        }

        .welcome-section .tagline {
            margin-top: 30px;
            font-weight: 600;
        }

        @keyframes gradientMove {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        /* Right side */

        .login-section {
            width: 50%;
            padding: 50px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-section h2 {
            font-size: 30px;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #aaaabd;
            font-size: 14px;
            margin-bottom: 35px;
            line-height: 1.6;
        }

        .form-group {
            margin-bottom: 22px;
        }

        .form-group label {
            display: block;
            margin-bottom: 9px;
            font-size: 13px;
            font-weight: 600;
            color: #d6d6e5;
        }

        .form-group input {
            width: 100%;
            padding: 14px 16px;
            border: 1px solid rgba(255, 255, 255, 0.15);
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.05);
            color: white;
            font-size: 14px;
            outline: none;
        }

        .form-group input::placeholder {
            color: #77778c;
        }

        .form-group input:focus {
            border-color: #9b7cdb;
            box-shadow: 0 0 0 3px rgba(108, 59, 219, 0.2);
        }

        .login-btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(135deg, #6c3bdb, #9b59b6);
            color: white;
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.3s;
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(108, 59, 219, 0.4);
        }

        .register-link {
            margin-top: 28px;
            text-align: center;
            color: #aaaabd;
            font-size: 14px;
            line-height: 1.8;
        }

        .register-link a {
            color: #c3a6ff;
            text-decoration: none;
            font-weight: 700;
        }

        .register-link a:hover {
            text-decoration: underline;
        }

        .back-home {
            margin-top: 22px;
            text-align: center;
        }

        .back-home a {
            color: #aaaabd;
            text-decoration: none;
            font-size: 13px;
        }

        .back-home a:hover {
            color: white;
        }

        /* Responsive design */

        @media (max-width: 700px) {
            .login-container {
                max-width: 450px;
                min-height: auto;
                flex-direction: column;
            }

            .welcome-section,
            .login-section {
                width: 100%;
            }

            .welcome-section {
                padding: 30px;
            }

            .welcome-section h1 {
                font-size: 28px;
            }

            .bank-icon {
                font-size: 40px;
                margin-bottom: 15px;
            }

            .login-section {
                padding: 35px 28px;
            }

            .login-section h2 {
                font-size: 26px;
            }
        }
    </style>
</head>

<body>

    <div class="bg-blob blob-one"></div>
    <div class="bg-blob blob-two"></div>

    <div class="login-container">

        <!-- Welcome Section -->
        <div class="welcome-section">

            <div class="bank-icon">🏦</div>

            <h1>Welcome to SimpleBank</h1>

            <p>
                Banking made simple, secure, and convenient.
                Sign in to continue your banking journey.
            </p>

            <p class="tagline">
                Your Money. Your Future.
            </p>

        </div>

        <!-- Login Section -->
        <div class="login-section">

            <h2>Welcome Back!</h2>

            <p class="subtitle">
                Enter your admin account details to log in.
            </p>

            <form action="/CheckCredentials" method="post">

                <div class="form-group">
                    <label for="email">Email Address</label>

                    <input
                        type="email"
                        id="email"
                        name="t1"
                        placeholder="Enter your registered email"
                        autocomplete="username"
                        required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>

                    <input
                        type="password"
                        id="password"
                        name="t2"
                        placeholder="Enter your password"
                        autocomplete="current-password"
                        required>
                </div>

                <button type="submit" class="login-btn">
                    Login to Your Account
                </button>

            </form>

            <div class="register-link">
                Don't have an account?
                <a href="/register">Register here</a>
            </div>

            <div class="back-home">
                <a href="/">← Back to Home</a>
            </div>

        </div>

    </div>

</body>
</html>
