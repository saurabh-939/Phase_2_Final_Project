package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlightsDao;
import com.dao.RegisterDao;
import com.db.DBConnection;
import com.entity.Customer;
import com.entity.Passenger;
@WebServlet("/booking")
/**
 * Servlet implementation class booking
 */
public class booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public booking() {
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
		int flight_id=Integer.parseInt(request.getParameter("flight_id"));
		String src=request.getParameter("src");
		String dest=request.getParameter("dest");
		String booking_date=request.getParameter("booking_date");
		String airline=request.getParameter("airline");
		String user=request.getParameter("user");
		int passenger=Integer.parseInt(request.getParameter("passenger"));
		int price=Integer.parseInt(request.getParameter("price"));
		
		FlightsDao dao= new FlightsDao(DBConnection.getCon());
		Passenger p=new Passenger(flight_id,src,dest,passenger,airline,booking_date,user);
		boolean f=dao.addPassenger(p);
		
		HttpSession session=request.getSession();
		if(f) {
			session.setAttribute("success","yes");
			response.sendRedirect("bookflights.jsp");
		
		}else {
			session.setAttribute("failed","Something went wrong!");
			response.sendRedirect("bookingflights.jsp");
		}
	
	}

}
