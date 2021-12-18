<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>

        <!-- Content Row -->
          <div class="card shadow mb-4">
              <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
              </div>
             <table class="table">
                  <tr>
                      <th>ID</th>
                      <th>Nazwa użytkownika</th>
                      <th>Email</th>
                      <th>Akcja</th>
                  </tr>
                  <c:forEach items="${users}" var="user">
                  <tr>
                      <td>${user.id}</td>
                      <td>${user.userName}</td>
                      <td>${user.email}</td>
                      <td>
                          <a href="<c:url value='/user/delete?userId=${user.id}'/>" >Usuń</a>
                          <a href="<c:url value='/user/update?userId=${user.id}'/>" >Edit</a>
                          <a href="<c:url value='/user/show?userId=${user.id}'/>" >Pokaż</a>
                      </td>
                  </tr>
                  </c:forEach>
              </table>
          </div>

      <!-- /.container-fluid -->

<%@ include file="footer.jsp"%>
