/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
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
@WebServlet(name = "AddToCartController", urlPatterns = {"/AddToCartController"})
public class AddToCartController extends HttpServlet {
private static final String CART_SESSION_KEY = "cart";
  
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Get the product id from the request
    String productId = request.getParameter("id");
    
    // Get the Cart from session (create it if does not exist)
    HttpSession session = request.getSession();
    Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute(CART_SESSION_KEY);
    if (cart == null) {
      cart = new HashMap<>();
      session.setAttribute(CART_SESSION_KEY, cart);
    }
    
    // Add the mobile to cart
    if (cart.containsKey(productId)) {
      cart.put(productId, cart.get(productId) + 1);
    } else {
      cart.put(productId, 1);
    }
    
    // Redirect back to the home page
    response.sendRedirect("GetProductList");
  }
}

