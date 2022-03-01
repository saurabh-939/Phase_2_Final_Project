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
import com.entity.CustomerLogin;
@WebServlet("/login")
/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
			String email=request.getParameter("email");
			String password=request.getParameter("password");
		
			
			RegisterDao dao= new RegisterDao(DBConnection.getCon());
			CustomerLogin cl=new CustomerLogin(email,password);
			boolean f=dao.loginCustomer(cl);

			HttpSession session=request.getSession();
			 response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.print(f);
			
			if(f) {
				session.setAttribute("success","Login Successfull");
				session.setAttribute("email",email);
				response.sendRedirect("bookflights.jsp");
			
			}else {
				session.setAttribute("failed","Something went wrong");
				response.sendRedirect("customerlogin.jsp");
			}
			
		}catch(Exception e) {
			
		}
	}

}
