
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SimpleBank Login</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f8fc;
            color: #183153;
            margin: 0;
        }

        .login-box {
            width: 320px;
            margin: 100px auto;
            padding: 25px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px #ccc;
        }

        h2 {
            text-align: center;
            color: #0866c6;
        }

        label {
            display: block;
            margin-top: 15px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background: #0866c6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #064f9c;
        }

        p {
            text-align: center;
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

    <div class="login-box">

        <h2>User Login</h2>

        <p style="color: red;">${error}</p>

        <form action="/login" method="post">

            <label>Email:</label>
            <input type="email" name="uemail" required>

            <label>Password:</label>
            <input type="password" name="upass" required>

            <button type="submit">Login</button>

        </form>

        <p>Don't have an account?</p>
        <p><a href="/">Back to Home</a></p>

    </div>

</body>
</html>
