<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ page isErrorPage="true" %>
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
                    <div class="container my-5">
                        <h1>New Product</h1>
                        <form:form action="/Product" method="post" modelAttribute="Product" class="my-2">
                            <div class="form-group my-2">
                                <form:label path="name">Name:</form:label>
                                <form:errors path="name" class="form-text text-danger" />
                                <form:input path="name" class="form-control" />
                            </div>
                            <div class="form-group my-2">
                                <form:label path="description">Description:</form:label>
                                <form:errors path="description" class="form-text text-danger" />
                                <form:textarea path="description" class="form-control"></form:textarea>
                            </div>
                            <div class="form-group my-2">
                                <form:label path="price">Price:</form:label>
                                <form:errors path="price" class="form-text text-danger" />
                                <form:input path="price" class="form-control" />
                            </div>
                            <div class="d-flex justify-content-end">
                                <input type="submit" value="Create" class="btn btn-primary">
                            </div>
                        </form:form>
                    </div>
                </body>

                </html>