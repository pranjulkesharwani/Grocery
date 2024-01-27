package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import models.Manufacturer;
import models.User;

@WebServlet("/manufacturer_login.do")
public class ManufacturerLogin extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("manufacturer_login.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(email, password);

        // Manufacturer manufacturer = new Manufacturer(email, password);

        System.out.println("+++++++++++++++++++++ " + password + "++++++++++++++++++++++++" + email);

        // int val = user.signInManuf();
        // int val = manufacturer.SignInManufacturer();

        // System.out.println(val + "++++++++++++++++++++++");

        request.getRequestDispatcher("manufacturer_login.jsp").forward(request, response);
    }
}
