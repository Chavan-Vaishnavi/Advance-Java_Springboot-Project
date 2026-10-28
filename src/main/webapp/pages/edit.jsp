<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SimpleBank - Registration</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        html {
            min-height: 100%;
            background:
                linear-gradient(rgba(10, 35, 70, 0.55),
                                rgba(10, 35, 70, 0.55)),
                url("https://static.vecteezy.com/system/resources/previews/038/459/131/non_2x/bank-account-registration-illustration-vector.jpg")
                no-repeat center center fixed;
            background-size: cover;
        }

        body {
            min-height: 100vh;
            background: transparent;
        }

        #registration-form {
            display: flex;
            max-width: 800px;
            min-height: 500px;
            margin: 80px auto;
            padding: 0;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
        }

        #registration-form .image {
            width: 50%;
            background:
                url("https://static.vecteezy.com/system/resources/previews/038/459/131/non_2x/bank-account-registration-illustration-vector.jpg")
                no-repeat center center;
            background-size: cover;
        }

        #registration-form .frm {
            width: 50%;
            padding: 35px;
            background: white;
        }

        #registration-form h1 {
            margin-bottom: 12px;
            color: #0866c6;
            font-size: 30px;
        }

        .subtitle {
            margin-bottom: 25px;
            color: #666;
            line-height: 1.5;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #183153;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            outline: none;
        }

        .form-control:focus {
            border-color: #0866c6;
            box-shadow: 0 0 4px rgba(8, 102, 198, 0.25);
        }

        .btn {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 6px;
            background: #0866c6;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: #064d96;
        }

        .login-link {
            margin-top: 20px;
            text-align: center;
            color: #555;
        }

        .login-link a {
            color: #0866c6;
            font-weight: bold;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        @media screen and (max-width: 700px) {
            #registration-form {
                max-width: 95%;
                margin: 40px auto;
            }

            #registration-form .image {
                width: 35%;
            }

            #registration-form .frm {
                width: 65%;
                padding: 25px;
            }
        }

        @media screen and (max-width: 500px) {
            #registration-form {
                margin: 25px auto;
            }

            #registration-form .image {
                display: none;
            }

            #registration-form .frm {
                width: 100%;
                padding: 25px;
            }

            #registration-form h1 {
                text-align: center;
            }
        }
    </style>
</head>

<body>

    <div class="container" id="registration-form">

        <div class="image"></div>

        <div class="frm">

            <h1>Update User Data</h1>


            <form action="/updatedata" method="post">
				<div class="form-group">
					<label for="id">User ID</label>
                    <input type="hidden" class="form-control" value=${temp.uid} id="id" name="uid">
				</div>
                <div class="form-group">
                    <label for="username">Full Name</label>
                    <input type="text" class="form-control" value=${temp.uname} id="username" name="uname" placeholder="Enter your full name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email"
                           class="form-control"
                           value=${temp.uemail}
                           id="email"
                           name="uemail"
                           placeholder="Enter your email address"
                           required>
                </div>

                <div class="form-group">
                    <label for="pwd">Password</label>
                    <input type="text"
                           class="form-control"
                           value=${temp.upass}
                           id="pwd"
                           name="upass"
                           placeholder="Create a password"
                           minlength="8"
                           required>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn">
                        Update
                    </button>
                </div>
				
            </form>


        </div>
    </div>

</body>
</html>
