package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PeopleDao;
import dao.PeopleDaoImpl;
import bean.PeopleBean;

/**
 * Servlet implementation class RegisterPeopleSrv
 */
@WebServlet("/RegisterPeopleSrv")
public class RegisterPeopleSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterPeopleSrv() {
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
		String vname=request.getParameter("vname");
		int age =Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String caste=request.getParameter("caste");
		String exp=request.getParameter("exp");
		
		PeopleBean bean=new PeopleBean();
		bean.setName(name);
		bean.setVname(vname);
		bean.setAge(age);
		bean.setGender(gender);
		bean.setCaste(caste);
		bean.setExperience(exp);
		bean.setAssign("NOT ASSIGNED");
		PeopleDao dao=new PeopleDaoImpl();
		boolean f=dao.addpeople(bean);
		if(f)
		{
			pw.print("<body bgcolor=cyan><h1>RECORD INSERTED </h1><br><a href=addpeople.jsp>BACK</a></body>");
		}
		else
			pw.print("<body bgcolor=cyan><h1>RECORD NOT INSERTED </h1><br><a href=addpeople.jsp>BACK</a></body>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
