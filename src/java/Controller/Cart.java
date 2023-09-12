/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Utils.ProductDAO;
import Utils.ProductDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author nguye
 */
@WebServlet(name = "Cart", urlPatterns = {"/Cart"})
public class Cart extends HttpServlet {
private static final String CART_SESSION_KEY = "cart";
  
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Get the Cart from session (create it if does not exist)
    
    ProductDAO productDao = new ProductDAO();
    HttpSession session = request.getSession();
    Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute(CART_SESSION_KEY);
    if (cart == null) {
      cart = new HashMap<>();
      session.setAttribute(CART_SESSION_KEY, cart);
    }
    
    // Get the details of each Product in the cart
    List<ProductDTO> productInCart = new ArrayList<>();
    for (String productId : cart.keySet()) {
      ProductDTO product = productDao.getProductByID(productId);
      if (product != null) {
        productInCart.add(product);
      }
    }
    
    // Set the mobiles and cart attribute for the JSP to use
    request.setAttribute("productInCart", productInCart);
    request.setAttribute("cart", cart);
    
    // Dispatch the request to the cart.jsp JSP
    request.getRequestDispatcher("cart.jsp").forward(request, response);
  }
}