package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;

@WebServlet("/check_phone_exists.do")
public class CheckPhoneExistsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String phone = request.getParameter("phone");

        boolean flag = false;
        if (User.checkPhoneExists(phone)) {
            flag = true;
        }

        response.getWriter().print(flag);
    }
}