import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//         response.sendRedirect("/login.jsp");
        if(request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
        } else {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = username.equals("admin") && password.equals("password");


//        String testUser = (String) session.getAttribute("user");
//        System.out.println(testUser);

        if (validAttempt) {
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
            session.setAttribute("isAdmin", true);
            request.getRequestDispatcher("/profile").forward(request, response);
        } else {
            response.sendRedirect("/login");
            System.out.println(username);
        }
    }
}
