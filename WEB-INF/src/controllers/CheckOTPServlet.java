package controllers;

import javax.servlet.*;
import javax.servlet.http.*;

import utils.AppUtility;

import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/check_otp.do")
public class CheckOTPServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        String otp = request.getParameter("otp");

        String sessionOTP = (String) session.getAttribute("otp");

        boolean flag = false;
        if (otp.equals(sessionOTP)) {
            flag = true;
        }

        response.getWriter().print(flag);
    }
}