/*
  I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/Registration-Page-Project
  https://www.youtube.com/watch?v=TJXTfF55QDE&t=2056s
 */

package eg.xadmin.register.web;

import eg.xadmin.register.dao.RegisterDao;
import eg.xadmin.register.model.Member;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author amydolan
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String jobtitle = request.getParameter("jobtitle");
		
		Member member = new Member(username, password, email, jobtitle);
		
		RegisterDao rDao = new RegisterDao();
		String result = rDao.insert(member);
		response.sendRedirect("../FYP6/userRegistration.jsp");
                
		
	}

}