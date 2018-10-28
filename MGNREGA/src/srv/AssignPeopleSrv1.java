package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssignPeopleDao1;
import dao.AssignPeopleDaoImpl1;

/**
 * Servlet implementation class AssignPeopleSrv1
 */
@WebServlet("/AssignPeopleSrv1")
public class AssignPeopleSrv1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignPeopleSrv1() {
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
		int peopleid=Integer.parseInt(request.getParameter("peopleid"));
		int capacity=Integer.parseInt(request.getParameter("capacity"));
		AssignPeopleDao1 dao=new AssignPeopleDaoImpl1();
		boolean f=dao.assign(peopleid, projectid);
		boolean f1=dao.reduceCapacity(projectid, capacity);
		if(f && f1)
		{
			pw.print("<body><h1>ASSIGNED SUCCESSFULLY</h1><br><a href=GramPanchayathomepage.jsp>Back</a></body>");
		}
		else
			pw.print("<body><h1>NOT ASSIGNED</h1><br><a href=GramPanchayathomepage.jsp>Back</a></body>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
