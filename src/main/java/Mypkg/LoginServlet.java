package Mypkg;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

    public class LoginServlet extends GenericServlet {
        public void doGet(HttpServletRequest request,
                          HttpServletResponse response) throws IOException,
                ServletException {
            String name = request.getParameter(“username”);
            String selectedColorValue =
                    request.getParameter(“color”);
// data processing code here
        }
    }
    public class LoginServlet extends HttpServlet{

    }