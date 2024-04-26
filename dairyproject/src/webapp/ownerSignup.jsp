<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration Form</title>
    <link rel="stylesheet" href="ownerSignup.css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
  </head>
 <body>
    <div>
      <div class="bgset">
      <section class="home">
        <div class="form_container">
          <div id="login-box" style="height:603px">
            <div class="left">
              <h1>Sign up</h1>
              <%String msg=(String)request.getAttribute("msg"); 
              if(msg!=null){
              %>
              <h3><%=msg %></h3>
              <%} %>
              <form action="saveDairy" method="post">
              <input type="text" name="dairyName" placeholder="Dairy Name" required/>
              <input type="text" name="dairyPhone" placeholder="Phone no." required/>
              <input type="text" name="dairyAddress" placeholder="Address" required/>
              <input type="password" name="password" placeholder="Password" required/>
              
              <input type="submit" name="signup_submit" value="Sign me up" />
              </form>
              <p>Alredy have Account? <a href="ownerLogin.jsp">login</a></p>
            </div>
            <div class="right">
              <span class="loginwith">Sign in with<br />social network</span>
              
              <button class="social-signin facebook">Log in with facebook</button>
              <button class="social-signin twitter">Log in with Twitter</button>
              <button class="social-signin google">Log in with Google+</button>
              <button class="social-signin linkedin">Log in with linkedin+</button>
            </div>
            <div class="or">OR</div>
          </div>
        </div>
      </section>
    </div>
    </div>
  </body>
</html>