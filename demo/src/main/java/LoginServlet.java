import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 //登录验证
@WebServlet(name = "LoginServlet", urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		UserDao dao = new UserDao();
		try {
			if (dao.searchUser(name,password)) {
				HttpSession session = request.getSession();
				session.setAttribute("name",name);
				RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
				dis.forward(request, response);
				
			} 
			else {
				request.setAttribute( "flag_login","false");
				request.getRequestDispatcher("/login.jsp").forward(request,response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

