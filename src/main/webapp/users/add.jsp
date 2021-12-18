<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>

    <!-- Content Row -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <form action="/user/add" method="post" class="user">
                Nazwa <br>
                <div class="my-2"></div>
                <input type="text" name="userName" placeholder="Nazwa użytkownika" class="form-control"/><br>
                Email<br>
                <div class="my-2"></div>
                <input type="text" name="email" placeholder="Email użytkownika" class="form-control"/><br>
                Hasło<br>
                <div class="my-2"></div>
                <input type="password" name="password" placeholder="Hasło użytkownika"  class="form-control"/><br>
                <input type="submit" value="Zapisz" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <div class="my-2"></div>
            </form>
        </div>
    </div>

    <!-- /.container-fluid -->

    <%@ include file="footer.jsp"%>
