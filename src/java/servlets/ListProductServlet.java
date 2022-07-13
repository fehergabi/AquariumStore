package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import manager.ProductDataService;
import umanager.User;
import umanager.UserDataService;

public class ListProductServlet extends HttpServlet {

    ProductDataService pService = new ProductDataService();
    UserDataService uService=new UserDataService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session=request.getSession();
        String uID=request.getRemoteUser();
        User user=uService.findUser(uID);
        session.setAttribute("user", user);
        
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet ListProductServlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<form action = 'basket.html' method = 'POST'>");
        pService.getProducts().forEach(prod -> {           
           out.println(prod + "<BR> <select id= 'mennyi' name = '" + prod.getPID() +"'><option value=''></option><option value=1>"+1+ "</option><option value=2>"+2+"</option><option value=3>"+3+"</option><option value=4>"+4+"</option><option value=5>"+5+"</option></select></BR>");
        });
        out.println("<input type = 'submit' value = 'Rendelés'/>");
        out.println("</form>");
        out.println("<form action = 'logout.html'>");
        out.println("<input type='submit' value='Kijelentkezés'>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }

}
