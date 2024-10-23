<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Registration</title>
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
        
            max-width: 600px;
            width: 100%;
            background: #ffffff;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #34495e;
            margin-bottom: 20px;
            font-size: 28px;
        }
        .message {
            color: green;
            text-align: center;
            margin-bottom: 15px;
        }
        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #2c3e50;
        }
        input[type="text"],
        input[type="password"],
        input[type="date"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="date"]:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.2);
        }
        input[type="submit"] {
            grid-column: span 2;
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
            grid-column: span 2;
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
            form {
                grid-template-columns: 1fr;
            }
            input[type="submit"] {
                grid-column: span 1;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Registration</h2>

        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>

        <form action="register" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required pattern="[A-Za-z ]+" title="Name should contain only letters and spaces" />

            <label for="dateOfBirth">Date of Birth:</label>
            <input type="date" name="dateOfBirth" id="dateOfBirth" required />

            <label for="gender">Gender:</label>
            <input type="text" name="gender" id="gender" required pattern="Male|Female|Other" title="Gender should be Male, Female, or Other" />

            <label for="address">Address:</label>
            <input type="text" name="address" id="address" required />

            <label for="city">City:</label>
            <input type="text" name="city" id="city" required />

            <label for="state">State:</label>
            <input type="text" name="state" id="state" required />

            <label for="loginId">Login ID:</label>
            <input type="text" name="loginId" id="loginId" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Enter a valid email address" />

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required minlength="6" title="Password must be at least 6 characters long" />

            <input type="submit" value="Register" />
        </form>

        <p>Already have an account? <a href="login">Login here</a></p>
    </div>
</body>
</html>
