<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 400px;
            width: 100%;
            background: #ffffff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #34495e;
            margin-bottom: 20px;
            font-size: 28px;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-weight: bold;
            color: #2c3e50;
        }
        input[type="text"],
        input[type="password"] {
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            transition: all 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.2);
        }
        input[type="submit"] {
            background-color: #e67e22;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #d35400;
        }
        .container p {
            text-align: center;
            margin-top: 20px;
        }
        .container p a {
            color: #3498db;
            text-decoration: none;
        }
        .container p a:hover {
            text-decoration: underline;
        }
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>

        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>

        <form action="login" method="post">
            <label for="loginId">Login ID:</label>
            <input type="text" name="loginId" id="loginId" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Enter a valid email address" />

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required minlength="6" title="Password must be at least 6 characters long" />

            <input type="submit" value="Login" />
        </form>
        <p>Don't have an account? <a href="register">Register here</a></p>
    </div>
</body>
</html>
