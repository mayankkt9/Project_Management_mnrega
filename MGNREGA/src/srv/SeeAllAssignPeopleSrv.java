package srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AssignPeopleDao;
import dao.AssignPeopleDaoImpl;
import dao.PeopleReferenceDao;
import dao.PeopleReferenceDaoImpl;
import bean.BeanGramPanchayat;
import bean.ProjectBean;

/**
 * Servlet implementation class SeeAllAssignPeopleSrv
 */
@WebServlet("/SeeAllAssignPeopleSrv")
public class SeeAllAssignPeopleSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeeAllAssignPeopleSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ses=request.getSession();
		Object obj=ses.getAttribute("gp");
		BeanGramPanchayat bean=(BeanGramPanchayat)obj;
		
		AssignPeopleDao dao=new AssignPeopleDaoImpl();
		ProjectBean pbean=dao.getProjectName(bean);
		int id=pbean.getId();
		
		PeopleReferenceDao dao1=new PeopleReferenceDaoImpl();
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
