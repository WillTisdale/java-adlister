import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NewPizzaServlet", urlPatterns = "/newpizza")
public class NewPizzaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/new-pizza.jsp").forward(req,res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String address = req.getParameter("user-address");
        String size = req.getParameter("size");
        String cheese = req.getParameter("cheese");
        if(cheese == null){
            cheese = "Normal";
        }
        String sauce = req.getParameter("sauce");
        if(sauce == null){
            sauce = "Marinara Sauce";
        }
        String amount = req.getParameter("amount");
        if(amount == null){
            amount = "Normal";
        }
        sauce = amount + " " + sauce;
        String [] meats = {req.getParameter("meat1"), req.getParameter("meat2"), req.getParameter("meat3"), req.getParameter("meat4")};
        String [] veggies = {req.getParameter("veggie1"), req.getParameter("veggie2"), req.getParameter("veggie3"), req.getParameter("veggie4")};
        System.out.println("------------------------------------------");
        System.out.printf("Size: %s%nCheese: %s%nSauce: %s%n", size, cheese, sauce);
        System.out.print("Meat: ");
        int meatCount = 0;
        for(String meat:meats){
            if(meat != null){
                meatCount += 1;
            }
        }
        if(meatCount == 0){
            System.out.printf("none%n");
        } else if (meatCount > 0){
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
        } else if (veggieCount > 0){
            for(String veggie:veggies){
            if(veggie != null){
                System.out.printf(veggie + " ");
            }
            }
            System.out.printf("%n");
        }
        System.out.printf("Address: %s", address);
        req.getRequestDispatcher("/new-pizza.jsp").forward(req,res);
    }
}
