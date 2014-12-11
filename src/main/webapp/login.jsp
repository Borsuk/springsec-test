<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Speechwizard Admin</title>
</head>
<body onload="document.loginData.j_username.focus();">
  <section class="container" > 
    <div class="login">
      <h1>Login to Administration Console (my hovercraft is full of eels)</h1>
      <form id="loginData" name="loginData" method="post" action="j_spring_security_check">
        <p>
            <input type="text" name="j_username" value="" placeholder="Username">
        </p>
        <p>
            <input type="password" name="j_password" value="" placeholder="Password">
        </p>        
        <% if (request.getParameter("error") != null) { %>
            <p class="error">Login failed. Please try again.</p>
        <% } %>
        <p class="submit">
            <input type="submit" name="commit" value="Login">
        </p>
      </form>
    </div>
  </section>
</body>
</html>