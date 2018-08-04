package servlets;

import entities.Client;
import entities.Professional;
import utils.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userType = request.getParameter("userType");
        if(userType.equals("client")) {
            registerClient(request, response);
        } else {
            registerProfessional(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    private void registerClient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        if(!password.equals(repassword)) {
            request.getRequestDispatcher("client.jsp").forward(request, response);
            return;
        }
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        Database database = new Database();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        Client client = new Client(null, firstName, lastName, email, username, password);
        if(!database.isUsernameAvailable(username, "clients") || !database.isUsernameAvailable(username, "professional")) {
            request.setAttribute("username", false);
            request.setAttribute("client", client);
            request.getRequestDispatcher("client.jsp").forward(request, response);
            return;
        } else {
            request.setAttribute("username", true);
        }
        if(!database.isEmailAvailable(email, "clients")) {
            request.setAttribute("client", client);
            request.setAttribute("email", false);
            request.getRequestDispatcher("client.jsp").forward(request, response);
            return;
        } else {
            request.setAttribute("email", true);
        }
        database.registerClient(client);
        response.sendRedirect("index.jsp");
    }

    private void registerProfessional(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        if(!password.equals(repassword)) {
            request.getRequestDispatcher("professional.jsp").forward(request, response);
            return;
        }
        Database database = new Database();
        String username = request.getParameter("username");
        String firstName = request.getParameter("firstName");
        String family = request.getParameter("lastName");
        int service = Integer.parseInt(request.getParameter("service"));
        int city = Integer.parseInt(request.getParameter("city"));
        String businessName = request.getParameter("businessName");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String qualification = request.getParameter("qualification");
        Professional professional = new Professional(null, firstName, family, username, password, service, city, businessName, address, phone, qualification);
        if(!database.isUsernameAvailable(username, "professional") || !database.isUsernameAvailable(username, "clients")) {
            request.setAttribute("username", false);
            request.setAttribute("professional", professional);
            request.getRequestDispatcher("professional.jsp").forward(request, response);
            return;
        } else {
            request.setAttribute("username", true);
        }

        database.registerProfessional(professional);
        response.sendRedirect("index.jsp");
    }
}
