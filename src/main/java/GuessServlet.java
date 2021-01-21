import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/guess.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String str = req.getParameter("number");
        int number = Integer.parseInt(str);
        double random = Math.ceil(Math.random() * 3);
        if(number == random){
            res.sendRedirect("/correct");
        } else if (number != random){
            res.sendRedirect("/incorrect");
        }
    }
}
