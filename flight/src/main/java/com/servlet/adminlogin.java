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
import com.entity.AdminLogin;
import com.entity.CustomerLogin;



@WebServlet("/adminlogin")

public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public adminlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String email=request.getParameter("email");
		String password=request.getParameter("password");

		
		RegisterDao dao= new RegisterDao(DBConnection.getCon());
		AdminLogin al=new AdminLogin(email,password);
		boolean f=dao.loginAdmin(al);

		HttpSession session=request.getSession();
		 response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print(f);
            out.print(email);
            out.print(password);
		
		if(f) {
			session.setAttribute("success","Login Successfull");
			response.sendRedirect("adminpanel.jsp");
		
		}else {
			session.setAttribute("failed","Something went wrong");
			response.sendRedirect("admin.jsp");
		}
	}

}
