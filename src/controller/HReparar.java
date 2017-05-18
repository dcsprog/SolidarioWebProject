package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carro;
import services.SCarro;
import services.SReparacao;

/**
 * Servlet implementation class HReparar
 */
@WebServlet("/HReparar")
public class HReparar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static SReparacao arRep;
    private static SCarro arCar;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HReparar() {
        super();
        arRep = new SReparacao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		request.setAttribute("listaCar", session.getAttribute("listaCar"));
		request.getRequestDispatcher("/rgReparacao.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
