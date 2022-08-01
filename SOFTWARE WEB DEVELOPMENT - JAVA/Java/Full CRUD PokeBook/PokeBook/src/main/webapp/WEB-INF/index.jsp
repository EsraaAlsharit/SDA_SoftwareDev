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
                        <h1 class="text-info">PokeBook</h1>
                        <table class="table table-bordered table-striped text-center">
                            <tr class="table-secondary">
                                <th>PokeBook</th>
                                <th>Vendor</th>
                                <th>Amount</th>
                                <th>Action</th>
                            </tr>
                            <c:forEach var="PokeBook" items="${PokeBooks_name}">
                                <tr>
                                    <td>
                                        <a href="/api/Expense/${PokeBook.id}">
                                            <c:out value="${PokeBook.name}" />
                                        </a>
                                    </td>
                                    <td>
                                        <c:out value="${PokeBook.vender}" />
                                    </td>
                                    <td>
                                        <c:out value="${PokeBook.amount}" />
                                    </td>
                                    <td class="d-flex justify-content-around">
                                        <a href="/api/edit/Expense/${PokeBook.id}">Edit</a>

                                        <form action="/api/Expense/${PokeBook.id}" method="post">
                                            <input type="hidden" name="_method" value="delete">
                                            <input type="submit" value="delete" class="btn btn-danger">
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                        <div>
                            <h2>Track an PokeBook:</h2>
                            <p class="text-danger">Description must not be blank</p>
                            <form:form action="/api/Expense" method="post" modelAttribute="PokeBook" class="my-2">

                                <div class="form-group my-2">
                                    <form:label path="Name">PokeBook Name:</form:label>
                                    <form:errors path="Name" class="form-text text-danger" />
                                    <form:input path="Name" class="form-control" />
                                </div>
                                <div class="form-group my-2">
                                    <form:label path="Vender">Vender:</form:label>
                                    <form:errors path="Vender" class="form-text text-danger" />
                                    <form:input path="Vender" class="form-control" />
                                </div>
                                <div class="form-group my-2">
                                    <form:label path="Amount">Amount:</form:label>
                                    <form:errors path="Amount" class="form-text text-danger" />
                                    <form:input path="Amount" class="form-control" />
                                </div>

                                <div class="form-group my-2">
                                    <form:label path="description">Description:</form:label>
                                    <form:errors path="description" class="form-text text-danger" />
                                    <form:textarea path="description" class="form-control" />
                                </div>

                                <input type="submit" value="Submit" class="btn btn-primary">
                            </form:form>
                        </div>


                    </div>
                </body>

                </html>