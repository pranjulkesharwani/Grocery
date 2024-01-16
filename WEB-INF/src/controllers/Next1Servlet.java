package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/next1.do")
public class Next1Servlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        request.getRequestDispatcher("next1.jsp").forward(request, response);
    }
}
