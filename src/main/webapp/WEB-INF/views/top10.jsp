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
	
	<title>Lookify | Top 10</title>
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

	<!-- Search Annotation Section -->
	<section class="searchAnnotation-section mt-5">
		<div class="container col-md-4">
			<div class="row justify-content-md-center">
				<h2>Top 10 Songs by Rating</h2>
			</div>
		</div>
	</section>

	<!-- Playlist Section -->
	<section class="playlist-section mt-3">
		<div class="container col-md-4">
			<div class="row justify-content-md-center">
				<table id="dtSort" class="table table-responsive table-hover table-dark">
				    <thead>
				        <tr>
				            <th scope="col">Rating</th>
				            <th scope="col">Title</th>
				            <th scope="col">Artist</th>
				        </tr>
				    </thead>
				    <tbody>
				        <c:forEach items="${topsongs}" var="s">
				        <tr>
				        	<td scope="row"><c:out value="${s.rating}"/></td>
				            <td scope="row"><a href="/songs/${s.id}">${s.title}</a></td>
				            <td scope="row"><c:out value="${s.artist}"/></td>
				        </tr>
				        </c:forEach>
				    </tbody>
				</table>
			</div>
		</div>
	</section>
	
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>
</html>