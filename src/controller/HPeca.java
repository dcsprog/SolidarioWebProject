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
    //private static SPeca arP;
    private ArrayList<Peca> arPT;
    private ArrayList<Peca> arPM;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HPeca() {
        super();
        arRep = new SReparacao();
        arPT = new ArrayList<>();
        arPM = new ArrayList<>();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.setAttribute("listaPecaT", arRep.getArReparacao().get(0).getPecasTiradas());
		//request.setAttribute("listaPecaM", arRep.getArReparacao().get(0).getPecasMetidas());
		//request.setAttribute("listaPeca", arRep.getArReparacao());
		
		//request.setAttribute("listaPecaT", arPT);
		
		HttpSession session = request.getSession(true);
		request.getSession().setAttribute("listaPecaT", arPT);
		request.getSession().setAttribute("listaPecaM", arPM);
		
		request.getRequestDispatcher("rgReparacao.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("elimPT")==null){ //Se não receber valor do objeto elim
			if(request.getParameter("tipo").equals("1")){ //Se a variavel tipo, recebida por post for igual a 1, ele irá criar novo funcionário
				Peca p = new Peca(arPT.size(),request.getParameter("nomeP"),request.getParameter("descricao"),Double.parseDouble(request.getParameter("preco")));
				
				
			}else{ //Se a variavel tipo, recebida por post for diferente de 1, ele irá editar funcionário
				
				Boolean a = true;
				
				if(request.getParameter("estado").equals("true")){
					a = true;
				}else {
					a = false;
				}
				
				

				
				
			}
		}else{ //Se reseber valor do objeto elim, apaga
			
			//scarro.elimCarro(Integer.parseInt(request.getParameter("elim")));
		}
		
		
		
		this.doGet(request, response);
	}

}
