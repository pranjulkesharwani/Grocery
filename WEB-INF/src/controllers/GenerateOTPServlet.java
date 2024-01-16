package controllers;

import javax.servlet.*;
import javax.servlet.http.*;

import utils.AppUtility;
import utils.SMSSender;

import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/generate_otp.do")
public class GenerateOTPServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // get session
        HttpSession session = request.getSession();

        // get parameter
        String phone = request.getParameter("phone");

        // generate otp
        String otp = AppUtility.generateOTP();

        // sendOTP
        // SMSSender.sendOTP(phone, otp);

        // save otp in session
        // session.setAttribute("otp", otp);
        session.setAttribute("otp", "444444");

        // send boolean response
        response.getWriter().print(true);
    }
}