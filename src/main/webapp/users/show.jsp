<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>

    <!-- Content Row -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
        </div>
        <table class="table">
            <tr>
                <th>ID</th>
                <td>${user.id}</td>
            </tr>

            <tr>
                <th>Nazwa użytkownika</th>
                <td>${user.userName}</td>
            </tr>

            <tr>
                <th>Email</th>
                <td>${user.email}</td>
            </tr>
        </table>
    </div>

    <!-- /.container-fluid -->

<%@ include file="footer.jsp"%>
