<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="customerLogin.css"/>
</head>
<body>
<% String msg=(String)request.getAttribute("msg"); 
 if(msg!=null){
%>
<h2><%=msg %></h2>
<%} %>
    <section class="forms-section">
        <h1 class="section-title">Milky Way </h1>
        <div class="forms">
          <div class="form-wrapper is-active">
            <button type="button" class="switcher switcher-login">
              Login
              <span class="underline"></span>
            </button>
            <form action="customer_login" class="form form-login">
              <fieldset>
                <legend>Please, enter your email and password for login.</legend>
                <div class="input-block">
                  <label for="login-email">E-mail</label>
                 <input type="email" name="email" id="login-email" required />
                </div>
                <div class="input-block">
                  <label for="login-password">Password</label>
                  <input id="login-password" type="password" name="password" required>
                </div>
              </fieldset>
              <button type="submit" class="btn-login">Login</button>
              <a href="checkEmail.jsp">Forgot Password</a>
            </form>
          </div>
          <div class="form-wrapper">
            <button type="button" class="switcher switcher-signup">
              Sign Up
              <span class="underline"></span>
            </button>
            <form action="user" method="post" class="form form-signup">
              <fieldset>
                <div class="input-block">
                  <label for="signup-name">Name</label>
                  <input id="signup-email" type="text" name="custemrName" required>
                </div>
                <div class="input-block">
                  <label for="signup-name">Phone</label>
                  <input id="signup-email" type="text" name="customerPhone" required>
                </div>
                <div class="input-block">
                  <label for="signup-email">E-mail</label>
                  <input id="signup-email" type="email" name="customerEmail" required>
                </div>
                <div class="input-block">
                  <label for="signup-password">Password</label>
                  <input id="signup-password" type="password" name="customerPassword" required>
                </div>
                <div class="input-block">
                  <label for="signup-password-confirm">Confirm password</label>
                  <input id="signup-password-confirm" type="password" required>
                </div>
              </fieldset>
              <button type="submit" class="btn-signup">Continue</button>
            </form>
          </div>
        </div>
      </section>
      <script>
        const switchers = [...document.querySelectorAll('.switcher')]

switchers.forEach(item => {
  item.addEventListener('click', function() {
    switchers.forEach(item => item.parentElement.classList.remove('is-active'))
    this.parentElement.classList.add('is-active')
  })
})
      </script>
</body>
</html>