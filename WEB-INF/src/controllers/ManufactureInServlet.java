package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/manufact_in.do")
public class ManufactureInServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("register_manufact.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        Map<String, String> map = (HashMap) session.getAttribute("map");

        String phone = (String) session.getAttribute("phone");
        // String name = request.getParameter("name");
        // String password = request.getParameter("password");
        // String email = request.getParameter("email");
        String name = map.get("name");
        String password = map.get("password");
        String email = map.get("email");
        String description = request.getParameter("description");
        String website = request.getParameter("website");
        String registration = request.getParameter("registration");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");

        System.out.println(name);
        System.out.println(password);
        System.out.println(email);
        System.out.println(phone);
        System.out.println(description);
        System.out.println(website);
        System.out.println(registration);
        System.out.println(address1);
        System.out.println(address2);

        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }
}