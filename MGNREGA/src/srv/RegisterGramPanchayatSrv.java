package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanGramPanchayat;
import dao.GramPanchayatDao;
import dao.GramPanchayatDaoImpl;

/**
 * Servlet implementation class AddgrampanchayatSrv
 */
@WebServlet("/RegisterGramPanchayatSrv")
public class RegisterGramPanchayatSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterGramPanchayatSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String vname=request.getParameter("vname");
		String district=request.getParameter("district");
		String state=request.getParameter("state");
		String number=request.getParameter("number");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
	
		BeanGramPanchayat obj=new BeanGramPanchayat();
		obj.setName(name);
		obj.setVname(vname);
		obj.setDistrict(district);
		obj.setState(state);
		obj.setNumber(number);
		obj.setUname(uname);
		obj.setPass(pass);
		
		
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
		GramPanchayatDao gp=new GramPanchayatDaoImpl();
		int licence=gp.insertgp(obj);
		
		if(licence>0)
		{
			pw.print("<body bgcolor=cyan><h1 align=center>RECORD INSERTED </h1><br><h2 align=center>LICENCE NUMBER IS "+licence+"</h2><br><center><a href=addgrampanchayat.jsp>BACK TO REGISTER GRAM PANCHAYAT</a></center><br><center><a href=BDOhomepage.jsp>BACK TO HOME PAGE</a></center></body>");
		}
		else
			pw.print("<body bgcolor=cyan><h1 align=center>RECORD NOT INSERTED </h1><br><br><center><a href=addgrampanchayat.jsp>BACK TO REGISTER GRAM PANCHAYAT</a></center><br><center><a href=BDOhomepage.jsp>BACK TO HOME PAGE</a></center></body>");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
