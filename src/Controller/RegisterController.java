package Controller;

import Model.User;
import redis.clients.jedis.Jedis;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Mostafa on 6/13/2016.
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        Jedis jedis = new Jedis("localhost",6379);

        String email = request.getParameter("email");
        if (!jedis.hexists("LoginUser", email)) {
            jedis.hset(request.getParameter("email"), "name", request.getParameter("name"));
            jedis.hset(request.getParameter("email"), "lastname", request.getParameter("lastname"));
            jedis.hset(request.getParameter("email"), "email", email);
            jedis.hset(request.getParameter("email"), "tell", request.getParameter("tell"));
            jedis.hset(request.getParameter("email"), "address", request.getParameter("address"));
            jedis.hset(request.getParameter("email"), "password", request.getParameter("password"));
            jedis.hset("LoginUser", request.getParameter("email"), request.getParameter("password"));

            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            response.getWriter().write("accepted");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }   else    {
            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            response.getWriter().write("denied");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
