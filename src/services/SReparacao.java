package services;

import java.util.ArrayList;

import model.Carro;
import model.Peca;
import model.Reparar;

public class SReparacao {

	private ArrayList<Reparar> arReparacao;
	
	public SReparacao(){
		
		arReparacao = new ArrayList<>();
	}

	public ArrayList<Reparar> getArReparacao() {
		return arReparacao;
	}

	public void setArReparacao(ArrayList<Reparar> arReparacao) {
		this.arReparacao = arReparacao;
	}
	
	public void Reparar(Carro automovel, ArrayList<Peca> pecasTirada, ArrayList<Peca> pecasIntroduzida,
			String dataInicio, String dataFim, double custoMaoObra) {
		Reparar r = new Reparar(arReparacao.size(),automovel, pecasTirada, pecasIntroduzida, dataInicio, dataFim, custoMaoObra);
		arReparacao.add(r);
	}
	
	
	
}
