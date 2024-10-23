<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Welcome</title>
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
            max-width: 500px;
            width: 100%;
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            font-size: 2.5em;
            color: #34495e;
            margin-bottom: 20px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
        }
        p {
            font-size: 1.2em;
            color: #7f8c8d;
            margin-bottom: 30px;
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
        }
        input[type="submit"]:hover {
            background-color: #d35400;
        }
        .container:hover {
            transform: translateY(-5px);
            transition: transform 0.3s ease-in-out;
        }
        .footer {
            margin-top: 20px;
            font-size: 1.2em;
            color: #95a5a6;
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
        <h2>Welcome, ${name}!</h2>
        <p>We're glad to have you here!</p>
        <form action="logout" method="post">
            <input type="submit" value="Logout" />
        </form>
    </div>
</body>
</html>
