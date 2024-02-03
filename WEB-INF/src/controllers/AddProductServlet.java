package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.io.File;

import models.User;
import models.Product;
import models.Unit;
import models.Category;
import models.Manufacturer;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.FileItem;

@WebServlet("/addproduct.do")
public class AddProductServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        String manufacturer = request.getParameter("man");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        // Unit unit = request.getParameter("unitId");
        String category = request.getParameter("categoryId");
        String description = request.getParameter("description");

        // String forwardPage = "manufacturer_login.jsp";

        if (user != null) {
            // Product product = new Product(manufacturer, name, price, unit, quantity,
            // category, description);
            // product.saveProduct();
        }

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }
}
