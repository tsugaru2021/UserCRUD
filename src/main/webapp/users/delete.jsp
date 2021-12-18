<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>

<!-- Content Row -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Czy na pewno chcesz usunąć ${user.userName}</h6>
    </div>
    <div class="card-body">
        <form action="/user/delete" method="post" class="user">
            <div class="my-2"></div>
                <input type="hidden" name="id" value="${user.id}"/>
                <input type="submit" name="delete" value="TAK" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <input type="submit" name="delete" value="NIE" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <div class="my-2"></div>
        </form>
    </div>
</div>

<!-- /.container-fluid -->

<%@ include file="footer.jsp"%>
