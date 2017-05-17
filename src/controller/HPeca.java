package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.SPeca;
import services.SReparacao;

/**
 * Servlet implementation class HPeca
 */
@WebServlet("/HPeca")
public class HPeca extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static SReparacao arRep;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HPeca() {
        super();
        arRep = new SReparacao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setAttribute("listaPeca", arRep.getArReparacao().get(0).getPecasMetidas());
		//request.setAttribute("listaPeca", arRep.getArReparacao());
		request.getRequestDispatcher("rgReparacao.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
