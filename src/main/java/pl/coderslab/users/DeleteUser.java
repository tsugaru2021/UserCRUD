package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");

        if (userId != null) {
            try {
                int userIdInt = Integer.parseInt(userId);
                UserDao userDao = new UserDao();
                User user = new User();
                user = userDao.read(userIdInt);

                if (user != null) {
                    request.setAttribute("user", user);
                    getServletContext().getRequestDispatcher("/users/delete.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/users/404.jsp");
                }

            } catch (Exception e) {
                response.sendRedirect("/users/404.jsp");
            }
        } else {
            response.sendRedirect("/users/404.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String delete = request.getParameter("delete");
        String id = request.getParameter("id");

        if (delete.equals("TAK")){
            try {
                int idInt = Integer.parseInt(id);
                UserDao userDao = new UserDao();
                userDao.delete(idInt);
                response.sendRedirect("/user/list");
            } catch (NumberFormatException e) {
                response.sendRedirect("/users/404.jsp");
            }
        } else {
            response.sendRedirect("/user/list");
        }
    }
}
