<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register</title>
  <style>
    :root {
      --clr-bg: linear-gradient(to right, #155799, #159957);
      --clr-container: rgba(255, 255, 255, 0.1);
      --clr-border: rgba(255, 255, 255, 0.2);
      --clr-text: #fff;
      --clr-placeholder: #eee;
      --clr-btn: #fff;
      --clr-btn-text: #111;
      --clr-btn-hover: #fff;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Inter", sans-serif;
    }

    body {
      background: var(--clr-bg);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--clr-text);
    }

    .register-box {
      background: var(--clr-container);
      border: 1px solid var(--clr-border);
      backdrop-filter: blur(15px);
      border-radius: 2rem;
      padding: 2rem 3rem;
      width: min(90%, 400px);
    }

    h2 {
      text-align: center;
      margin-bottom: 1.5rem;
    }

    .form-group {
      margin-bottom: 1rem;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 0.8rem;
      border: none;
      border-bottom: 2px solid var(--clr-border);
      background: transparent;
      color: var(--clr-text);
      font-size: 1rem;
      outline: none;
    }

    input::placeholder {
      color: var(--clr-placeholder);
    }

    .form-check {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      font-size: 0.9rem;
      margin: 1rem 0;
    }

    .form-check input[type="checkbox"] {
      transform: scale(1.2);
    }

    .btn-submit {
      background: var(--clr-btn);
      color: var(--clr-btn-text);
      padding: 0.8rem;
      width: 100%;
      border: none;
      border-radius: 30px;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.3s ease;
    }

    .btn-submit:hover {
      background: transparent;
      color: var(--clr-btn-hover);
      border: 2px solid var(--clr-btn-hover);
    }

    .form-footer {
      margin-top: 1.2rem;
      text-align: center;
      font-size: 0.9rem;
    }

    .form-footer a {
      color: #aad8d3;
      text-decoration: none;
    }

    .form-footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>


  <div class="register-box">
    <h2>Register</h2>
    <% 
String msg =(String)request.getAttribute("msg");
if(msg!=null){
	out.print(msg);
}
%>
    <form action="newUser" method="post">
      <div class="form-group">
        <input type="email" name="username" placeholder="User-email" name="username" required />
      </div>
      <div class="form-group">
        <input type="password" name="password" placeholder="Password" name="password" required />
      </div>
      <div class="form-check">
        <input type="checkbox" name="terms" id="terms" required />
        <label for="terms">I agree to the <a href="#">terms and conditions</a></label>
      </div>
      <button type="submit" class="btn-submit">Register</button>
    </form>
    <div class="form-footer">
      Already have an account? <a href="login.jsp">Log in</a>
    </div>
  </div>

</body>
</html>

    