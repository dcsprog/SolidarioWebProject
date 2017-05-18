package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Peca;
import services.SPeca;
import services.SReparacao;

/**
 * Servlet implementation class HPeca
 */
@WebServlet("/HPeca")
public class HPeca extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static SReparacao arRep;
    private static SPeca arPCS;
    private ArrayList<Peca> arPT;
    private ArrayList<Peca> arPM;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HPeca() {
        super();
        arRep = new SReparacao();
        arPCS = new SPeca();
        arPT = new ArrayList<>();
        arPM = new ArrayList<>();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("listaPecaT", arRep.getArReparacao().get(Integer.parseInt(request.getParameter("idR"))).getPecasTiradas());
		request.setAttribute("listaPecaM", arRep.getArReparacao().get(Integer.parseInt(request.getParameter("idR"))).getPecasMetidas());
		//request.setAttribute("listaPeca", arRep.getArReparacao());
		//request.setAttribute("listaPecaT", arPT);
		
		HttpSession session = request.getSession(true);
		request.getSession().setAttribute("listaPecaT", arRep.getArReparacao().get(Integer.parseInt(request.getParameter("idR"))).getPecasTiradas());
		request.getSession().setAttribute("listaPecaM", arRep.getArReparacao().get(Integer.parseInt(request.getParameter("idR"))).getPecasMetidas());
		
		request.getRequestDispatcher("rgReparacao.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("elimPM")==null){ //Se não receber valor do objeto elim
			if(request.getParameter("tipo").equals("1")){ //Se a variavel tipo, recebida por post for igual a 1, ele irá criar novo funcionário
				
				arPCS.addPecaM(Integer.parseInt(request.getParameter("idR")),arRep.getArReparacao().size(),request.getParameter("nomePM"),request.getParameter("descricaoPM"),Double.parseDouble(request.getParameter("precoPM")));
				
			}else{ //Se a variavel tipo, recebida por post for diferente de 1, ele irá editar funcionário
				
				arPCS.editarPecaM(Integer.parseInt(request.getParameter("idR")),Integer.parseInt(request.getParameter("idPT")), request.getParameter("nomePM"), request.getParameter("descricaoPM"), Double.parseDouble(request.getParameter("precoPM")));
				
			}
		}else{ //Se reseber valor do objeto elim, apaga
			
			//scarro.elimCarro(Integer.parseInt(request.getParameter("elim")));
			arPCS.elimPecaM(Integer.parseInt(request.getParameter("idR")), Integer.parseInt(request.getParameter("elimPM")));
		}
		
		this.doGet(request, response);
	}

}
