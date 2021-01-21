import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IncorrectGuessServlet", urlPatterns = "/incorrect")
public class IncorrectGuessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String bColor = "red";
        String tColor = "grey";
        String message = "You Were WRONG!!!";
        req.setAttribute("bColor", bColor);
        req.setAttribute("tColor", tColor);
        req.setAttribute("message", message);
        req.getRequestDispatcher("/guess-outcome.jsp").forward(req, res);
    }

}