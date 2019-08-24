<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Custom CSS -->
	<style><%@include file="/WEB-INF/css/style.css"%></style>

	<title>Lookify | HOME</title>
</head>
<body>
	
	<!-- Login Container Main Background -->
    <div class="login-container d-flex align-items-center justify-content-center">
        <form class="login-form text-center">

            <!-- Logo and Title -->
            <img class="logo mb-5" src="images/whitelogo.png" alt="Company Logo">
            
            <h4 class="mb-4 font-weight-light">Welcome</h4>

            <!-- Credentials Capture Form Group -->
            <div class="form-group">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email or Username">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
            <div class="login-btn mb-3">
                <button type="button" onclick="location.href='/dashboard';"
                    class="btn btn-primary btn-block">Login</button>
            </div>
            <div class="form-check d-flex align-items-center justify-content-between mb-3">
                <input type="checkbox" class="form-check-input" id="gridCheck1">
                <label class="form-check-label" for="gridCheck1">Remember Me</label>
                <a href="#">Forgot Password?</a>
            </div>
            <div class="d-flex align-items-center justify-content-center border-top">
                <p class="register-now mt-3 font-weight-normal">Don't have an account? <a href="#">Register Now</a>
                </p>
            </div>
        </form>
    </div>


    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>