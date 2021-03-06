<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/main.css" />
            <!-- For any Bootstrap that uses JS or jQuery-->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

            <title>Insert title here</title>
        </head>

        <body>
            <div class="container mx-5">
                <h4 class="my-5">You have visited <a href="/">http://localhost:8080/</a>
                    <c:out value="${countToShow}" /> times
                    <a href="/">Test another visit?</a>
                </h4>
                <a href="/reset" class="btn btn-secondary">Reset</a>
            </div>
        </body>

        </html>