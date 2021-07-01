package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	
	public void doPost(
			HttpServletRequest request, HttpServletResponse response
			)throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		request.setCharacterEncoding("UTF-8");
		String user=request.getParameter("user");
		
		
	}

}
