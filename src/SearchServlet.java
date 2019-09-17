import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "searchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    private final String USER = "tim";
    private final String PW ="tim";
    private final String DRIVER = "jdbc:derby:";
    private final String DB_PATH= "/WEB-INF/lib/apex";
    DatabaseUtils utils = new DatabaseUtils();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rset = null;


        try{
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String path = getServletContext().getRealPath(DB_PATH);
            conn = DriverManager.getConnection(DRIVER + path, USER, PW);

            pstmt = conn.prepareStatement("SELECT USER_ID FROM USERS WHERE LAST_NAME = ?");

            String searchTerm = request.getParameter("searchTerm");

            pstmt.setString(1,searchTerm);

            rset= pstmt.executeQuery();

            StringBuilder html = new StringBuilder("<html><body>");

            while(rset.next()){
                int id =  rset.getInt("user_id");

                html.append("<p>").append(id).append("</p>");
            }

            html.append("</body></html>");

            response.getWriter().print(html.toString());

        }catch(ClassNotFoundException | SQLException ex){
            response.getWriter().print(ex.getMessage());
            ex.printStackTrace();
        }finally{
            utils.closeAll(conn,pstmt,rset);
        }


    }
    }

