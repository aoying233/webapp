import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/server"})
public class MyServlet implements Servlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("这是init()方法...");
    }
    
    @Override
    public void destroy() {
        System.out.println("这是destroy()方法...");
    }

    @Override
    public void service(ServletRequest req, ServletResponse resp){
        System.out.println("doing...");
    }

    @Override
    public ServletConfig getServletConfig(){
        return null;
    }

    @Override
    public String getServletInfo(){
        return "";
    }
}
