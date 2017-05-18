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
import model.Peca;
import services.SCarro;
import services.SPeca;
import services.SReparacao;

@WebServlet("/HReparar")
public class HReparar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static SReparacao arRep;
    private static SCarro arCar;
    SPeca sPeca;
    
    ArrayList<Peca> listaPecasMetidas = new ArrayList<>();
    ArrayList<Peca> listaPecasRetiradas = new ArrayList<>();
    
    public HReparar() {
        super();
        arRep = new SReparacao();
        sPeca = new SPeca();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		request.setAttribute("listaCar", session.getAttribute("listaCar"));
		request.setAttribute("listaPecaT", session.getAttribute("listaPecaT"));
		request.setAttribute("listaPecaT", listaPecasRetiradas);
		request.setAttribute("listaPecaM", listaPecasMetidas);
		request.setAttribute("listaRep", arRep.getArReparacao());
		request.getRequestDispatcher("/rgReparacao.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("inserido").equals("1")){ //Inserir Reparação
//arCar.procurarCar(Integer.parseInt(request.getParameter("listCar")))
			if(request.getParameter("elimRP")==null){
				if(request.getParameter("tipo").equals("1")){
					arRep.addReparar(new Carro(),
							listaPecasRetiradas, listaPecasMetidas,
							request.getParameter("dataIn").toString(),
							request.getParameter("dataFim").toString(),
							Double.parseDouble(request.getParameter("totalm")));
				}else{
					arRep.editarRep(Integer.parseInt(request.getParameter("idR")),
							arCar.procurarCar(Integer.parseInt(request.getParameter("listCar"))),
							listaPecasRetiradas, listaPecasMetidas,
							request.getParameter("dataIn").toString(),
							request.getParameter("dataFim").toString(),
							Double.parseDouble(request.getParameter("totalm")));
				}
				
			}else{
				arRep.elimRep(Integer.parseInt(request.getParameter("elimRP")));
			}
		}else if(request.getParameter("inserido").equals("2")){ //Inserir Peça Metida
			if(request.getParameter("elimPT")==null){
				listaPecasMetidas.add(new Peca(1, request.getParameter("nomePM"),
						request.getParameter("descricaoPM"), 
						Double.parseDouble(request.getParameter("precoPM"))));
			}else{
				
			}
			
		}else{ //Inserir Peça Retirada
			listaPecasRetiradas.add(new Peca(1, request.getParameter("nomeP"), request.getParameter("descricao"), Double.parseDouble(request.getParameter("preco"))));
		}
		
		this.doGet(request, response);
	}

}
