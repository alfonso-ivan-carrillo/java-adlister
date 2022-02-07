import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Integer.parseInt;

@WebServlet(name = "GuessLogicServlet", urlPatterns = "/guesslogic")
public class GuessLogicServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/guessapp.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String guess = req.getParameter("guess");
        int guessnum = parseInt(guess);
        System.out.println(guessnum);
        req.setAttribute("guessnum", guessnum);

        int randomNum = (int) (Math.random() * (3 -1 + 1) + 1);
        if ( guessnum == randomNum){
            String win = "winner";
            req.setAttribute("winner", win);

        } else {
            System.out.println("no");
        }



    }
}
