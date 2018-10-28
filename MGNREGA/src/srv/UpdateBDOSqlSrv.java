package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BDODao;
import dao.BDODaoImpl;
import bean.BDOBean;

/**
 * Servlet implementation class UpdateBDOSqlSrv
 */
@WebServlet("/UpdateBDOSqlSrv")
public class UpdateBDOSqlSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBDOSqlSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("HEYA");
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
		int id=Integer.parseInt(request.getParameter("id").trim());
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(address);
		System.out.println(mobile);
		System.out.println(email);
		System.out.println(pass);
		System.out.println("HEYA");
		
		
		
		BDOBean bean=new BDOBean(id, name, address, mobile, email, pass);
		BDODao dao=new BDODaoImpl();
		boolean f=dao.updateBDO(bean);
		if(f)
			pw.print("<body bgcolor=cyan><h1>UPDATED SUCCESFULLY</h1><br><a href=BDOhomepage.jsp>BACK</a></body>"); 
		else
			pw.print("<body bgcolor=cyan><h1>UPDATION FAILED</h1><br><a href=BDOhomepage.jsp>BACK</a></body>"); 
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
