package srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.BDOBean;
import bean.BeanGramPanchayat;
import dao.LoginDao;
import dao.LoginDaoImpl;

/**
 * Servlet implementation class LoginSrv
 */
@WebServlet("/LoginSrv")
public class LoginSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String type=request.getParameter("type");
		
		String page="index.jsp";
		
		
		LoginDao dao=new LoginDaoImpl();
		BDOBean bean=dao.validateUser(uname, pass);
		BeanGramPanchayat bean1=dao.validateUserGP(uname, pass);
		if(bean!=null && type.equals("BDO")){
			HttpSession ses=request.getSession();
			ses.setAttribute("BDOdetails", bean);
			page="BDOhomepage.jsp";
			
		}
		if(bean1!=null && type.equals("GramPanchayat"))
		{
			HttpSession ses=request.getSession();
			ses.setAttribute("GPdetails", bean1);
			page="GramPanchayathomepage.jsp";
		}
		
		response.sendRedirect(page);	
		
	}	
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		doGet(request, response);
		
	}

}
