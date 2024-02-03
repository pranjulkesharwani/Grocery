package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;

@WebServlet("/choose_item.do")
public class ChooseItemServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        String grocery = request.getParameter("grocery");
        String health = request.getParameter("health");
        String beauty = request.getParameter("beauty");
        String personalCareApplication = request.getParameter("personalCareApplication");

        // request.setAttribute("grocery", grocery);
        System.out.println(grocery);
        System.out.println(health);
        System.out.println(beauty);
        System.out.println(personalCareApplication);

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }
}
