import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "Servlet2", urlPatterns = "/list")
public class Servlet2 extends HttpServlet {
    private final String USER = "tim";
    private final String PW ="tim";
    private final String DRIVER = "jdbc:derby:";
    private final String DB_PATH= "/WEB-INF/lib/apex";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;


        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String path = getServletContext().getRealPath(DB_PATH);
            conn = DriverManager.getConnection(DRIVER + path, USER, PW);
            stmt = conn.createStatement();
            rset = stmt.executeQuery("select FIRST_NAME from USERS");


            StringBuilder html = new StringBuilder("<html><body><ul>");


            response.getWriter().print(html.toString());
            while (rset.next()) {
                String fName = rset.getString("FIRST_NAME");
                html.append("<li>").append(fName).append("</li>");


            }

            html.append("</ul></body></html>");

            response.getWriter().print(html.toString());
        }catch(ClassNotFoundException | SQLException ex){
            response.getWriter().print(ex.getMessage());
        }

    }
    }

