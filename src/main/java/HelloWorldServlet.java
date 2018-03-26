import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet",
            urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String usrName = req.getParameter("usrName");
        if (usrName == null) {
            res.getWriter().println("<h1>Hello, World!</h1>");
        } else {
            res.getWriter().printf("<h1>Hello,  %s!</h1>", usrName);
        }
        int Count = 0;
    }
}

