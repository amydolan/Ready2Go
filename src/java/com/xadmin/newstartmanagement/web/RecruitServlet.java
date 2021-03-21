/* I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/userManagementApplication
  https://www.youtube.com/watch?v=-3m2_wHWXf4&t=3416s */

package com.xadmin.newstartmanagement.web;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xadmin.newstartmanagement.dao.RecruitDao;
import com.xadmin.newstartmanagement.model.Recruit;

/**
 *
 * @author amydolan
 */

@WebServlet("/")
public class RecruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RecruitDao recruitDAO;
	
	public void init() {
		recruitDAO = new RecruitDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertRecruit(request, response);
				break;
			case "/delete":
				deleteRecruit(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateRecruit(request, response);
				break;
			default:
				listRecruit(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listRecruit(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Recruit> listRecruit = recruitDAO.selectAllRecruits();
		request.setAttribute("listRecruit", listRecruit);
		RequestDispatcher dispatcher = request.getRequestDispatcher("recruit-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("recruit-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Recruit existingRecruit = recruitDAO.selectRecruit(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("recruit-form.jsp");
		request.setAttribute("recruit", existingRecruit);
		dispatcher.forward(request, response);

	}

	private void insertRecruit(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
                String startdate = request.getParameter("startdate");
		String email = request.getParameter("email");
		String role = request.getParameter("role");
                String address = request.getParameter("address");
                String manager = request.getParameter("manager");
		String requirements = request.getParameter("requirements");
		String updates = request.getParameter("updates");
                
		Recruit newRecruit = new Recruit(name, startdate, email, role, address, manager, requirements, updates);
		recruitDAO.insertRecruit(newRecruit);
		response.sendRedirect("list");
	}

	private void updateRecruit(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
                String startdate = request.getParameter("startdate");
		String email = request.getParameter("email");
		String role = request.getParameter("role");
                String address = request.getParameter("address");
                String manager = request.getParameter("manager");
		String requirements = request.getParameter("requirements");
		String updates = request.getParameter("updates");

		Recruit book = new Recruit(id, name, startdate, email, role, address, manager, requirements, updates);
		recruitDAO.updateRecruit(book);
		response.sendRedirect("list");
	}

	private void deleteRecruit(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		recruitDAO.deleteRecruit(id);
		response.sendRedirect("list");

	}

}