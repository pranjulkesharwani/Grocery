package controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;

@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        request.getRequestDispatcher("next.jsp").forward(request, response);
    }
}
