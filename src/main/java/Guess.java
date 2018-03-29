import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(urlPatterns = "/guess")
public class Guess extends HttpServlet {
    private Random r = new Random();
    private int randNum = r.nextInt(100) + 1;
    private int count = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        int answer = randNum;
        count++;
        req.setAttribute("answer", answer);
        req.setAttribute("count", count);

        req.getRequestDispatcher("/guess.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String reply;

        if (count <= 5) {
            int myNum = Integer.parseInt(req.getParameter("number"));

            System.out.println(randNum);
            if (myNum > 100 || myNum < 1) {
                reply = "err";
            } else if (myNum > randNum) {
                reply = "low";
            } else if (myNum < randNum) {
                reply = "high";
            } else {
                reply = "correct";
            }
        } else {
            reply = "exceed";
            count = 0;
        }
        res.sendRedirect("/results.jsp?reply="+reply);
    }
}
