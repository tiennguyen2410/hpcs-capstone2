package controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.TestThemLich;


public class themlichSeverlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public themlichSeverlet() {
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("alo alo !!!");
		TestThemLich them = new TestThemLich();
		String s = request.getParameter("timeStart");
		String e = request.getParameter("timeEnd");
		System.out.println(s+"   "+e);
		them.themSinhVien(s, e, "FREE TIME");
		RequestDispatcher rd = request.getRequestDispatcher("/scheduleCustomer.jsp");
		rd.forward(request, response);
	}
	

}
