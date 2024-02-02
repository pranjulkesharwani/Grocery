package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;

@WebServlet("/choose_item.do")
public class ChooseItemServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String grocery = request.getParameter("grocery");
        String health = request.getParameter("health");
        String beauty = request.getParameter("beauty");
        String personalCareApplication = request.getParameter("personalCareApplication");

        System.out.println(grocery);
        System.out.println(health);
        System.out.println(beauty);
        System.out.println(personalCareApplication);

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }
}
