package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
// import java.util.ArrayList;

@WebServlet("/index.do")
public class IndexServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // ArrayList<>

        // request.setAttribute("", "");

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
