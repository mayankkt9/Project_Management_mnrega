package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssignGramPanchayatDao;
import dao.AssignGramPanchayatDaoImpl;

/**
 * Servlet implementation class AssignGramPanchayatSrv
 */
@WebServlet("/AssignGramPanchayatSrv")
public class AssignGramPanchayatSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignGramPanchayatSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		int projectid=Integer.parseInt(request.getParameter("projectid"));
		int grampanchayatid=Integer.parseInt(request.getParameter("grampanchayatid"));
		
		AssignGramPanchayatDao dao=new AssignGramPanchayatDaoImpl();
		boolean f=dao.assign(projectid, grampanchayatid);
		if(f)
		{
			pw.print("<body bgcolor=cyan><center><h1>ASSIGNED SUCCESSFULLY</h1></center><br><a href=AssignGramPanchayat.jsp>BACK TO ASSIGN PAGE</a><br><a href=BDOhomepage.jsp>BACK TO HOME PAGE</a></body>");
		}
		else
			pw.print("<body bgcolor=cyan><h1>NOT ASSIGNED</h1><br><a href=BDOhomepage.jsp>Back</a></body>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
