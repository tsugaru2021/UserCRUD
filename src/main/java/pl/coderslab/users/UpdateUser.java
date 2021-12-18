package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/update")
public class UpdateUser extends HttpServlet {
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
                    getServletContext().getRequestDispatcher("/users/update.jsp").forward(request, response);
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
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String id = request.getParameter("id");

        try {
            int idInt = Integer.parseInt(id);

            User user = new User();
            UserDao userDao = new UserDao();
            user = userDao.read(idInt);
            user.setUserName(userName);
            user.setEmail(email);
            user.setPassword(password);

            if (userDao.update(user) != null){
                response.sendRedirect("/user/list");
            } else {
                response.sendRedirect("/users/404.jsp");
            }

        } catch (NumberFormatException e) {
            response.sendRedirect("/users/404.jsp");
        }
    }
}
