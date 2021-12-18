<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>

<!-- Content Row -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
    </div>
    <div class="card-body">
        <form action="/user/update" method="post" class="user">
            Nazwa <br>
            <div class="my-2"></div>
            <input type="text" name="userName" value="${user.userName}" class="form-control"/><br>
            Email<br>
            <div class="my-2"></div>
            <input type="text" name="email" value="${user.email}" class="form-control"/><br>
            Hasło<br>
            <div class="my-2"></div>
            <input type="password" name="password" value="${user.password}"  class="form-control"/><br>
            <input type="hidden" name="id" value="${user.id}"/>
            <input type="submit" value="Zaktualizuj" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <div class="my-2"></div>
        </form>
    </div>
</div>

<!-- /.container-fluid -->

<%@ include file="footer.jsp"%>
