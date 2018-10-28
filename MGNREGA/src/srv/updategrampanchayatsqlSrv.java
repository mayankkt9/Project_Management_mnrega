package srv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BDOBean;
import bean.BeanGramPanchayat;
import dao.BDODao;
import dao.BDODaoImpl;
import dao.GramPanchayatDao;
import dao.GramPanchayatDaoImpl;

/**
 * Servlet implementation class updategrampanchayatsqlSrv
 */
@WebServlet("/updategrampanchayatsqlSrv")
public class updategrampanchayatsqlSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updategrampanchayatsqlSrv() {
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
		
		int licence=Integer.parseInt(request.getParameter("licence").trim());
		String name=request.getParameter("name");
		String vname=request.getParameter("vname");
		String district=request.getParameter("district");
		String state=request.getParameter("state");
		String number=request.getParameter("number");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		BeanGramPanchayat bean=new BeanGramPanchayat(name, vname, district, state, number, uname, pass, licence);
		GramPanchayatDao dao=new GramPanchayatDaoImpl();
			
			
		boolean f=dao.updateGramPanchayat(bean);
		if(f)
			pw.print("<body bgcolor=cyan><h1>UPDATED SUCCESFULLY</h1><br><a href=GramPanchayathomepage.jsp>BACK</a></body>"); 
		else
			pw.print("<body bgcolor=cyan><h1>UPDATION FAILED</h1><br><a href=GramPanchayathomepage.jsp>BACK</a></body>"); 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
