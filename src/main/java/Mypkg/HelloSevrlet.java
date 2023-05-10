package Mypkg;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;




public class HelloSevrlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            response.setContentType("text/html; charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPEhtml!>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Service FirstServlet</title");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Service FirstServlet at" + request.getContextPath() + "</h1>");
                out.println("<title>Service FirstServlet</title");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Service FirstServlet at" + request.getContextPath() + "</h1>");
                out.println("</body>");
                out.println("<html>");
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
    }
}
