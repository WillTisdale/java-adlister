import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    int views = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String reset = req.getParameter("reset");

        views += 1;

        if(reset != null){
            views = 1;
        }

        if(views == 1){
            out.println("<h2>This page has been viewed " + views + " time.</h2>");
        } else {
            out.println("<h2>This page has been viewed " + views + " times.</h2>");
        }

    }
}
