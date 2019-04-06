package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BEAN.Caregiver;
import model.BEAN.Rate;
import model.BO.CaregiverBO;
import model.BO.RateBO;


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
				
				//lay list get_list_rate , key : id_caregiver , value : object rate
				RateBO rateBO= new RateBO();
				 Map<Integer, Rate> map = new HashMap<Integer, Rate>();
				for(int i=0;i<listCaregiver.size();i++) {
					map.put(listCaregiver.get(i).getId_Account(),rateBO.getRate(listCaregiver.get(i).getId_Account()) );
				}
				System.out.println(listCaregiver);
				
				
				 Set<Integer> set = map.keySet();
				 request.setAttribute("listRate", map);
				request.setAttribute("ccc", listCaregiver);
				//in rate
				for (Integer key : set) {
		            System.out.println("id: "+key + " " + map.get(key));
		        }

				
				RequestDispatcher rd = request.getRequestDispatcher("layouts/hire.jsp");
				rd.forward(request, response);
	}

}