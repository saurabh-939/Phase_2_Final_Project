package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlightsDao;
import com.db.DBConnection;
import com.entity.Flights;
@WebServlet("/SearchFlight")
/**
 * Servlet implementation class SearchFlight
 */
public class SearchFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFlight() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		String email=request.getParameter("email");
		String src=request.getParameter("src");
		String dest=request.getParameter("dest");
		String available_date=request.getParameter("date");
		
		
		String input =request.getParameter("ip");
		FlightsDao dao=new FlightsDao(DBConnection.getCon());
		
		HttpSession session=request.getSession();
		session.setAttribute("src",src);
		session.setAttribute("dest",dest);
		session.setAttribute("date", available_date);
		session.setAttribute("email", email);
		response.sendRedirect("bookflights.jsp");
		
	
		
	
		
	}

}
