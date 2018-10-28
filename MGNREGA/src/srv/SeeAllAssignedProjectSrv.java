package srv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AssignGramPanchayatBean;
import bean.AssignedGramPanchayat;
import bean.BeanGramPanchayat;
import dao.AssignGramPanchayatDao;
import dao.AssignGramPanchayatDaoImpl;
import dao.GramPanchayatDao;
import dao.GramPanchayatDaoImpl;

/**
 * Servlet implementation class SeeAllAssignedProjectSrv
 */
@WebServlet("/SeeAllAssignedProjectSrv")
public class SeeAllAssignedProjectSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeeAllAssignedProjectSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AssignGramPanchayatDao dao=new AssignGramPanchayatDaoImpl();
		ArrayList<AssignedGramPanchayat> alist=dao.seeAllAssignedGramPanchayat();
		HttpSession ses=request.getSession();
		ses.setAttribute("list", alist);
		response.sendRedirect("seeallassignedproject.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
