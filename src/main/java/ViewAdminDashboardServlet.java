import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewAdminDashboardServlet", urlPatterns = "/admin")
public class ViewAdminDashboardServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(); // gets current session

        // Session attributes must be casted because they are returned as a generic object
        boolean isAdmin = (boolean) session.getAttribute("isAdmin");

        if(isAdmin == false){
            //User path
            response.sendRedirect("/profile");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);


    }
}
