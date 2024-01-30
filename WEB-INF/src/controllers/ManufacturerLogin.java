package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.regex.Pattern;

import models.Manufacturer;
import models.User;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

@WebServlet("/manufacturer_login.do")
public class ManufacturerLogin extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("manufacturer_login.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        boolean flag1 = true, flag2 = true;

        Pattern emailPattern = Pattern.compile("\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}");
        Matcher emailMatcher = emailPattern.matcher(email);

        if (!emailMatcher.matches()) {
            request.setAttribute("Email_Error", "Enter Valid Email");
            flag1 = false;
        }

        String nextPage = "manufacturer_login.jsp";

        if (flag1) {
            User user = new User(email, password);

            if (user.signInManuf()) {
                System.out.println("+++++++++++++++++++++++++++++++++++++++++" + user.signInManuf());
                session.setAttribute("isLoggedin", true);
                nextPage = "dashboard.jsp";
            } else {
                request.setAttribute("signin_error", "either email or password is incorrect");
            }
        }

        // Manufacturer manufacturer = new Manufacturer(email, password);

        System.out.println("+++++++++++++++++++++ " + password + "++++++++++++++++++++++++" + email);

        // int val = user.signInManuf();

        // int val = manufacturer.SignInManufacturer();

        // System.out.println(val + "++++++++++++++++++++++");

        // String nextPage = "manufacturer_login.jsp";
        // if (val == 1) {
        // nextPage = "dashboard.jsp";
        // }
        request.getRequestDispatcher(nextPage).forward(request, response);
    }
}
