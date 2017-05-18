package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carro;
import services.SCarro;

/**
 * Servlet implementation class HCarro
 */
@WebServlet("/HCarro")
public class HCarro extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static SCarro scarro;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HCarro() {
        super();
        scarro = new SCarro();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("listaCarros", scarro.getArCarros());
		request.getRequestDispatcher("/rgCarro.jsp").forward(request, response);
		
		
		HttpSession session = request.getSession(true);
		request.getSession().setAttribute("listaCar", scarro.getArCarros());
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("elim")==null){ //Se não receber valor do objeto elim
			if(request.getParameter("tipo").equals("1")){ //Se a variavel tipo, recebida por post for igual a 1, ele irá criar novo funcionário
				
				Boolean a = true;
				
				if(request.getParameter("estado").equals("true")){
					a = true;
				}else {
					a = false;
				}
				
				scarro.addCarro(scarro.getArCarros().size(),
						request.getParameter("marca"),
						request.getParameter("modelo"),
						request.getParameter("cv"),
						request.getParameter("cc"),
						request.getParameter("lugares"),
						request.getParameter("matricula"),
						request.getParameter("combustivel"),
						request.getParameter("dataPReg"),
						request.getParameter("kmi"),a);
				
				
			}else{ //Se a variavel tipo, recebida por post for diferente de 1, ele irá editar funcionário
				
				Boolean a = true;
				
				if(request.getParameter("estado").equals("true")){
					a = true;
				}else {
					a = false;
				}
				
				scarro.editarCar(Integer.parseInt(request.getParameter("idC")),
						request.getParameter("marca"),
						request.getParameter("modelo"),
						request.getParameter("cv"),
						request.getParameter("cc"),
						request.getParameter("lugares"),
						request.getParameter("matricula"),
						request.getParameter("combustivel"),
						request.getParameter("dataPReg"),
						request.getParameter("kmi"),a
						/*Boolean.parseBoolean(request.getParameter("estado"))*/);

				
				
			}
		}else{ //Se reseber valor do objeto elim, apaga
			
			scarro.elimCarro(Integer.parseInt(request.getParameter("elim")));
		}
		
		
		
		this.doGet(request, response);
	}

}
