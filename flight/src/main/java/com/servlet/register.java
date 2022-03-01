package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegisterDao;
import com.db.DBConnection;
import com.entity.Customer;
@WebServlet("/register")
/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
try {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		RegisterDao dao= new RegisterDao(DBConnection.getCon());
		Customer c=new Customer(fname,lname,email,password);
		boolean f=dao.addCustomer(c);
		
		HttpSession session=request.getSession();
		if(f) {
			session.setAttribute("success","Registration Successfull");
			response.sendRedirect("register.jsp");
		
		}else {
			session.setAttribute("failed","Something went wrong!");
			response.sendRedirect("customerlogin.jsp");
		}
		
		
		
	
	}catch(Exception e) {
	e.printStackTrace();
}
	}

}
