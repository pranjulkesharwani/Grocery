package controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;

import java.io.IOException;

import utils.AppUtility;
import models.User;
import models.Country;
import models.Address;

@WebServlet("/signup.do")
public class SignupServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        // String responseToken = request.getParameter("g-recaptcha-response");

        ServletContext context = getServletContext();

        String recaptchaURL = context.getInitParameter("recaptcha_url");

        String secretKey = context.getInitParameter("secret_key");

        // boolean flag = AppUtility.checkGoogleRecaptchaResponse(recaptchaURL,
        // secretKey, responseToken);

        String nextPage = "signup.jsp";
        // System.out.println(flag);
        // if (flag) {
        // System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++A");
        // String name = request.getParameter("Your Name");
        String name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        int countryId = Integer.parseInt(request.getParameter("country"));
        // String addressLine1 = request.getParameter("addressLine1");
        // System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++B");
        // int countryId = Integer.parseInt(request.getParameter("country"));
        // String phone = request.getParameter("phone");

        User user = new User(name, email, password, phone, new Country(countryId));
        // User user = new User(name, email, password, phone, new Country(countryId),
        // new Address(addressLine1));
        // User user = new User(name, email, password, phone);
        // System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++C");
        if (user.signupUser()) {
            nextPage = "signin.jsp";
        }
        // }

        response.sendRedirect(nextPage);
    }
}

// incomplete