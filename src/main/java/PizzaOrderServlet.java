import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza-order.jsp").forward(req,res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String size = req.getParameter("size");
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String [] meats = {req.getParameter("meat1"), req.getParameter("meat2"), req.getParameter("meat3")};
        String [] veggies = {req.getParameter("veggie1"), req.getParameter("veggie2"), req.getParameter("veggie3")};
        String address = req.getParameter("address");
        System.out.printf("Size: %s%nCrust: %s%nSauce: %s%n", size, crust, sauce);
        System.out.printf("Meat: ");
        int meatCount = 0;
        for(String meat:meats){
            if(meat != null){
                meatCount += 1;
            }
        }
        if(meatCount == 0){
            System.out.printf("none%n");
        } else if (meatCount > 1){
            for(String meat:meats){
            if(meat != null){
                System.out.printf(meat + " ");
            }
            }
            System.out.printf("%n");
        }
        System.out.printf("Veggie: ");
        int veggieCount = 0;
        for(String veggie:veggies){
            if(veggie != null){
                veggieCount += 1;
            }
        }
        if(veggieCount == 0){
            System.out.printf("none%n");
        } else if (veggieCount > 1){
            for(String veggie:veggies){
            if(veggie != null){
                System.out.printf(veggie + " ");
            }
            }
            System.out.printf("%n");
        }
        System.out.printf("Address: %s", address);
        req.getRequestDispatcher("/pizza-order.jsp").forward(req,res);
    }
}
