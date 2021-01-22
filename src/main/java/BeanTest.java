import models.Album;
import models.Author;
import models.Quote;

import java.util.ArrayList;
import java.util.Date;

public class BeanTest {
    public static void main(String[] args) {
        Album lp1 = new Album();
        Album jf1 = new Album();
        Album kd1 = new Album();

        lp1.setId(35L);
        lp1.setArtist("Little People");
        lp1.setName("Mickey Mouse Operation");
        lp1.setReleaseDate(new Date());
        lp1.setSales(10);
        lp1.setGenre("Electronic");

        lp1.setId(36L);
        lp1.setArtist("Joey Fehrenbach");
        lp1.setName("Don't Wake Me");
        lp1.setReleaseDate(new Date());
        lp1.setSales(10);
        lp1.setGenre("Electronic");

        lp1.setId(34L);
        lp1.setArtist("Kodomo");
        lp1.setName("Still Life");
        lp1.setReleaseDate(new Date());
        lp1.setSales(10);
        lp1.setGenre("Electronic");

        Author da = new Author();
        Author mt = new Author();
        Author kv = new Author();

        da.setId(1L);
        da.setFirstName("Douglas");
        da.setLastName("Adams");
        mt.setId(2L);
        mt.setFirstName("Mark");
        mt.setLastName("Twain");
        kv.setId(3L);
        kv.setFirstName("Kurt");
        kv.setLastName("Vonnegut");

        Quote q1 = new Quote();
        Quote q2 = new Quote();
        Quote q3 = new Quote();
        Quote q4 = new Quote();
        Quote q5 = new Quote();

        q1.setId(1L);
        q1.setAuthorId(da);
        q1.setContent("I love deadlines. I love the whooshing noise they make as they go by.");
        q2.setId(2L);
        q2.setAuthorId(da);
        q2.setContent("Don't Panic");
        q3.setId(3L);
        q3.setAuthorId(da);
        q3.setContent("Time is an illusion. Lunchtime doubly so.");
        q4.setId(4L);
        q4.setAuthorId(mt);
        q4.setContent("Clothes make the man. Naked people have little or no influence on society");
        q5.setId(5L);
        q5.setAuthorId(kv);
        q5.setContent("The universe is a big place, perhaps the biggest.");

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(q1);
        quotes.add(q2);
        quotes.add(q3);
        quotes.add(q4);
        quotes.add(q5);

        System.out.println("------------------------------------------------------------------------------------------------");
        System.out.println("|     Author     |                               Quote                                         |");
        System.out.println("+----------------------------------------------------------------------------------------------+");
        for(Quote quote:quotes){
            System.out.printf("| %-16s| %-75s|%n", (quote.getAuthorId().getFirstName() + " " + quote.getAuthorId().getLastName()), quote.getContent());
            System.out.println("|----------------------------------------------------------------------------------------------|");
        }
    }
}
