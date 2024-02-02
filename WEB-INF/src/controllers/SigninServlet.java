package controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
// import javax.servlet.ServletContext;

import java.io.IOException;

// import utils.AppUtility;
import models.User;
// import models.Country;

@WebServlet("/signin.do")
public class SigninServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("signin.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(email, password);

        int statusId = user.signinUser();

        String nextPage = "signin.jsp";
        // System.out.println("++++++++++++++++++ SignIn Servlet +++++++++++++++++++" +
        // statusId);
        boolean flag = false;

        switch (statusId) {
            // case -1:
            // request.setAttribute("signin_err_msg", "Account with the given email does not
            // exist");
            // break;
            // case 0:
            // request.setAttribute("signin_err_msg", "Account with the given email does not
            // exits");
            // break;
            case 1:
                // request.setAttribute("");
                session.setAttribute("user", user);
                nextPage = "profile.do";
                flag = true;
                break;
            // case 2:
            // request.setAttribute("signin_err_msg",
            // "Verify Your account by clicking over the Activation Link sent to your email
            // id... resend Verification Mail<a href='#'>click me</a>");
            // break;
            // case 3:
            // request.setAttribute("sign_err_msg", "Your Account is Closed.. Activation
            // your account");
            // break;
            // case 4:
            // request.setAttribute("sign_err_msg", "Your Account is Closed... Activation
            // your account");
            // break;
            // case 5:
            // request.setAttribute("sign_err_msg", "sorry Your Account is Blocked");
            // break;
        }

        if (flag)
            response.sendRedirect(nextPage);
        else
            request.getRequestDispatcher(nextPage).forward(request, response);
    }
}