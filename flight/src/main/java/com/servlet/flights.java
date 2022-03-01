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
import com.entity.Customer;
import com.entity.Flights;
@WebServlet("/flights")
/**
 * Servlet implementation class flights
 */
public class flights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public flights() {
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
//		doGet(request, response);
		try {
		String airline=request.getParameter("airline");
		String src=request.getParameter("src");
		String dest=request.getParameter("dest");
		String available_date=request.getParameter("available_date");
		String capacity=request.getParameter("capacity");
		int price=Integer.parseInt(request.getParameter("price"));
			
		FlightsDao dao=new FlightsDao(DBConnection.getCon());
		Flights flt=new Flights(airline,src,dest,available_date,capacity,price);
		boolean f=dao.addFlights(flt);
		
		HttpSession session=request.getSession();
		if(f) {
			session.setAttribute("flight","Flight added Suucessfully");
			response.sendRedirect("adminpanel.jsp");
		
		}else {
			session.setAttribute("failed","Something went wrong!");
			response.sendRedirect("admin.jsp");
		}
		
		
		}catch(Exception e) {
			
		}
	}

}
