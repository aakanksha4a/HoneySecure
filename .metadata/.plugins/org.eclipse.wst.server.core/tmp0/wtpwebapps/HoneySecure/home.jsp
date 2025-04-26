<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Home Page</title>
  <style>
@import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@500&display=swap');

body {
  margin: 0;
  padding: 0;
  font-family: 'Rajdhani', sans-serif;
  background: linear-gradient(to right, #00c6ff, #0072fc);
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  animation: fadeIn 0.6s ease-in;
}

.container {
  background-color: #ffffff;
  padding: 40px 35px;
  border-radius: 14px;
  border: 1px solid #d0d7de;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 600px;
  text-align: center;
  animation: slideUp 0.5s ease-out;
}

h1 {
  font-size: 26px;
  color: #1e88e5;
  margin-bottom: 20px;
}

p {
  font-size: 16px;
  color: #444;
  margin-bottom: 30px;
}

.top-right {
  position: absolute;
  top: 20px;
  right: 30px;
}

.top-right a {
  color: white;
  text-decoration: none;
  font-weight: bold;
  font-size: 14px;
  border-bottom: 1px solid transparent;
  transition: 0.3s ease;
}

.top-right a:hover {
  border-bottom: 1px solid #1e88e5;
  color: #0d47a1;
}

.btn-group a {
  display: inline-block;
  padding: 12px 22px;
  font-size: 16px;
  color: white;
  background-color: #1e88e5;
  border: none;
  border-radius: 25px;
  text-decoration: none;
  margin: 10px;
  transition: background-color 0.3s ease, transform 0.2s ease;
}

.btn-group a:hover {
  background-color: #1565c0;
  transform: scale(1.04);
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slideUp {
  from { transform: translateY(40px); opacity: 0; }
  to { transform: translateY(0); opacity: 1; }
}
  </style>
</head>
<body>

  <!-- Logout Link -->
  <div class="top-right">
    <a href="login.jsp">Logout</a>
  </div>

  <!-- Container for content -->
  <div class="container">
    <h1>Welcome to the Home Page</h1>
    <p>You have successfully logged in. Use the navigation below to explore the site.</p>

    <!-- Buttons for navigation -->
    <div class="btn-group">
      <a href="amdproduct.jsp">Add/Update/Delete</a>
      <a href="Search.jsp">Search</a>
      <a href="getallproduct.jsp">List</a>
    </div>
  </div>

</body>
</html>
