package srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.BDOBean;
import dao.BDODaoImpl;
import dao.BDODao;

/**
 * Servlet implementation class RegisBDOSrv
 */
@WebServlet("/RegisBDOSrv")
public class RegisBDOSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisBDOSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		
		BDOBean bean=new BDOBean();
		
		
		bean.setName(name);
		bean.setAddress(address);
		bean.setMobile(mobile);
		bean.setEmail(email);
		bean.setPassword(pass);
		
		BDODao dao=new BDODaoImpl();
		
		
		int id=dao.registerBDO(bean);
		if(id>0){
			
			HttpSession ses=request.getSession();
			
			ses.setAttribute("idname", id);
			
			response.sendRedirect("bdosuccess.jsp");
		}
		else
			response.sendRedirect("fails.jsp");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);	
		
	}

}
