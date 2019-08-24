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
	
	<title>Lookify | Add</title>
</head>
<body>
	
	<!-- NavBar Section -->
    <section class="navbar">
        <!-- Top Nav Bar -->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top shadow">
            <a class="navbar-brand" href="/dashboard">Lookify</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
                aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/dashboard">Dashboard</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-sub pull-right">
                	<li><a href="/dashboard">Back |</a></li>
                    <li><a href="/">| Logout</a></li>
                </ul>
            </div>
        </nav>
    </section>

	<section class="add-form mt-5">
		<div class="d-flex justify-content-center align-items-center container">
			<form:form class="form-horizontal" action="/addSong" method="post" modelAttribute="song">
			
				<div class="form-group row">
					<label for="title" class="col-sm-2 col-form-label">Title</label>
					<div class="col-sm-10">
						<form:input path="title" class="form-control" placeholder="Song Title"/>
						<form:errors path="title" />
					</div>
				</div>

				<div class="form-group row">
					<label for=artist class="col-sm-2 col-form-label">Artist</label>
					<div class="col-sm-10">
						<form:input path="artist" class="form-control" placeholder="Artist(s) Name"/>
						<form:errors path="artist" />
					</div>
				</div>
				
				<div class="form-group row">
					<label for=album class="col-sm-2 col-form-label">Album</label>
					<div class="col-sm-10">
						<form:input path="album" class="form-control" placeholder="Album name"/>
						<form:errors path="album" />
					</div>
				</div>
				
				<div class="form-group row">
					<label for=year class="col-sm-2 col-form-label">Year</label>
					<div class="col-sm-10">
						<form:input path="year" class="form-control" placeholder="Year Published"/>
						<form:errors path="year" />
					</div>
				</div>
				
				<div class="form-group row">
					<label for=length class="col-sm-2 col-form-label">Length</label>
					<div class="col-sm-10">
						<form:input path="length" class="form-control" placeholder="Length 0.00"/>
						<form:errors path="length" />
					</div>
				</div>

				<div class="form-group row">
					<label for=rating class="col-sm-2 col-form-label">Rating</label>
					<div class="col-sm-10">
						<form:select path="rating" class="custom-select">
						  <option selected>Choose...</option>
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						  <option value="6">6</option>
						  <option value="7">7</option>
						  <option value="8">8</option>
						  <option value="9">9</option>
						  <option value="10">10</option>
						</form:select>
						<form:errors path="rating" />
					</div>
				</div>

				<input id="singlebutton" class="btn btn-primary btn-sm btn-block" type="submit" value="Submit"/>
	
			</form:form>
		</div>
	</section>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>