package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProjectDao;
import dao.ProjectDaoImpl;
import bean.ProjectBean;

/**
 * Servlet implementation class AddProjectSrv
 */
@WebServlet("/AddProjectSrv")
public class AddProjectSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProjectSrv() {
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
		
		String name=request.getParameter("name");
		String duration=request.getParameter("duration");
		int capacity=Integer.parseInt(request.getParameter("capacity"));
		String description=request.getParameter("description");
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		
		
		ProjectBean obj=new ProjectBean();
		obj.setName(name);
		obj.setDuration(duration);
		obj.setCapacity(capacity);
		obj.setDescription(description);
		obj.setSdate(sdate);
		obj.setEdate(edate);
		
		
		ProjectDao dao=new ProjectDaoImpl();
	    int id=dao.addproject(obj);
		
		if(id>0)
			pw.print("<body bgcolor=cyan><center><h1>PROJECT INSERTED</h1></center><br><br><h2 align=center>PROJECT ID IS "+id+"</h2><br><center><a href=Addproject.jsp>BACK TO ADD PROJECT DETAILS</a></center><br><center><a href=BDOhomepage.jsp>BACK TO HOME PAGE</a></center></body>");
		else
			pw.print("<body bgcolor=cyan><center><h1>PROJECT NOT INSERTED</h1></center><br><center><a href=Addproject.jsp>BACK TO ADD PROJECT DETAILS</a></center><br><center><a href=BDOhomepage.jsp>BACK TO HOME PAGE</a></center></body>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
