package controller.admin.Order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hoadonModal.HoaDon;
import hoadonModal.hoadonBO;
import lichsuModal.LichSu;
import lichsuModal.LichSuBO;
import userModal.User;

/**
 * Servlet implementation class ShowOrderController
 */
@WebServlet("/ShowOrderController")
public class ShowOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			hoadonBO hdBO = new hoadonBO();
			ArrayList<HoaDon> lstHoaDon = hdBO.lstHoaDon();
			for (HoaDon hoaDon : lstHoaDon) {
				System.out.println(hoaDon.toString());
			}
			request.setAttribute("lstHoaDon", lstHoaDon);
			RequestDispatcher rd = request.getRequestDispatcher("Order/Admin_Confirm_Order.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
