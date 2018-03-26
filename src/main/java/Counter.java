import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Counter", urlPatterns = "/count")
public class Counter extends HttpServlet {
    private int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String reset = req.getParameter("reset");

        if (reset != null) {
            count = 0;
            resp.getWriter().printf("Count is: %s", count);
        } else {
            count += 1;
            resp.getWriter().printf("Count is: %s", count);
        }

    }
}
