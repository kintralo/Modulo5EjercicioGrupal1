<%--
  Created by IntelliJ IDEA.
  User: Pablo
  Date: 13-07-2023
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Inicio</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
<footer class="aria-expanded-lg bg-dark text-light py-3 mt-3">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>Actividad Grupal 1</h3>
                <p>Módulo 5</p>
            </div>
            <div class="col-md-6">
                <h3>Integrantes</h3>
                <ul class="list-unstyled">
                    <li><a href="#">Juan Pablo Vásquez</a></li>
                    <li><a href="#">Sebastián Araya</a></li>
                    <li><a href="#">Víctor Briso</a></li>
                    <li><a href="#">Andrés Tapia</a></li>

                </ul>
            </div>
        </div>
    </div>
</footer>
<jsp:include page='modalLogin.jsp' flush="true"/>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>
</html>