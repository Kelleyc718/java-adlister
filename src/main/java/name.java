import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="Name", urlPatterns = "/name")
public class name extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws
    IOException, ServletException {
        req.getRequestDispatcher("/name.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String name = req.getParameter("name");
        String color = req.getParameter("color");
        res.sendRedirect("/name?"+name+"&color?"+color);
    }
}
