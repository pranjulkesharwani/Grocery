package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletContext;

import java.io.IOException;
import java.util.List;
import java.io.File;

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

        if (ServletFileUpload.isMultipartContent(request)) {
            ServletContext context = getServletContext();

            try {
                List<FileItem> list = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                String uploadPath = context.getRealPath("/WEB-INF/uploads");

                for (FileItem item : list) {
                    if (item.isFormField()) {

                        System.out.println("productName");
                        System.out.println("quantity");
                        System.out.println("description");
                    } else {
                        File file = new File(uploadPath, item.getName());
                        try {
                            item.write(file);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        }

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }
}
