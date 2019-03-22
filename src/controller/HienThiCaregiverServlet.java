package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BEAN.Caregiver;
import model.BO.CaregiverBO;


/**
 * Servlet implementation class HienThiCaregiverServlet
 */
@WebServlet("/HienThiCaregiverServlet")
public class HienThiCaregiverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HienThiCaregiverServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");

				//lay danh sach Caregiver
				ArrayList<Caregiver> listCaregiver ;
				CaregiverBO caregiverBO = new CaregiverBO();
				listCaregiver=caregiverBO.getCaregiver();
				request.setAttribute("ccc", listCaregiver);
				
				RequestDispatcher rd = request.getRequestDispatcher("layouts/hire.jsp");
				rd.forward(request, response);
	}

}
