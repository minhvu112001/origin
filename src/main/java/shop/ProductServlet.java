package shop;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.*;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private List<Product> productList;

    public void init() throws ServletException{
        super.init();
        productList = new ArrayList<>();
        productList.add(new Product(1,"Apple AirTag",28.90));
        productList.add(new Product(2,"Apple Magic Keyboard",99.51));
        productList.add(new Product(3,"Apple Watch Band",49.9));
        productList.add(new Product(4,"apple Watch Series 8",329.00));
        productList.add(new Product(5,"Apple 2021 iMac", 1271.60));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getParameter("action");

        if(action == null){
            action = "list";
        }

        switch (action){
            case "new":
                showNewForm(request, response);
                break;
            case "create":
                creatProduct(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doGet(request, response);
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("product-form.jsp");
        dispatcher.forward(request, response);
    }

    private void creatProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));
        int id = productList.size() + 1;

        Product newProduct = new Product(id, productName, price);
        productList.add(newProduct);

        response.sendRedirect("products");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = getProductById(id);

        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product-form.jsp");
        dispatcher.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));

        Product product = getProductById(id);
        product.setProductName(productName);
        product.setPrice(price);

        response.sendRedirect("products");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = getProductById(id);
        productList.remove(product);

        response.sendRedirect("products");
    }

    private Product getProductById(int id){
        for(Product product : productList){
            if(product.getId() == id){
                return product;
            }
        }
        return null;
    }
}