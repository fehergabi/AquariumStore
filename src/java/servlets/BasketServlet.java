package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import manager.*;
import umanager.User;

public class BasketServlet extends HttpServlet {

    ProductDataService pService = new ProductDataService();
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         HttpSession session=request.getSession();
        User user=(User)session.getAttribute("user");
        
        
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet BasketServlet</title>");
        out.println("</head>");
        out.println("<body>");
        user.getBasket().stream().forEach(item -> {
            out.println(item + " db rendelve</BR>");
            
        });
        
        out.println("</body>");
        out.println("</html>");
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("user");
        
        Enumeration<String> pIDS = request.getParameterNames();
        while (pIDS.hasMoreElements()) {
            try {
                String sPID = pIDS.nextElement();
                Integer PID = Integer.parseInt(sPID);
                Product prod = pService.findProduct(PID);
                int amount = Integer.parseInt(request.getParameter(sPID));
                BasketItem newbItem = new BasketItem(prod.getPID(), prod.getName(), prod.getPrice(), amount);
                if (!user.getBasket().contains(newbItem)) {
                    user.getBasket().add(newbItem);
                } else {
                    BasketItem bItem = user.getBasket().stream().filter(basketItem -> basketItem.getPID().equals(PID)).findFirst().get();
                    bItem.setAmount(amount);
                }
                newbItem.subTotal();
            } catch (Exception e) {
            }

        }
        response.sendRedirect("basket.html");
    }

}
