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
	
	public void addReparar(Carro automovel, ArrayList<Peca> pecasTirada, ArrayList<Peca> pecasIntroduzida,
			String dataInicio, String dataFim, double custoMaoObra) {
		Reparar r = new Reparar(arReparacao.size(),automovel, pecasTirada, pecasIntroduzida, dataInicio, dataFim, custoMaoObra);
		arReparacao.add(r);
	}
	
	public Reparar listarRep(int idCarro, int idRep){
		
		Reparar r = new Reparar();
		
		for(Reparar rp : arReparacao){
			if(idRep == arReparacao.get(idRep).getIrReparacao()){
				if(idCarro == arReparacao.get(idRep).getCarro().getIdCarro()){
					r = rp;
				}
			}
		}
		return r;	
	}
	
	public void elimRep(int id){
		arReparacao.remove(id);
		for(int i=id;i<arReparacao.size();i++){
			arReparacao.get(i).setIrReparacao(arReparacao.get(i).getIrReparacao()-1);
		}
	}
	
	public void editarRep(int idRep,Carro automovel, ArrayList<Peca> pecasTirada, ArrayList<Peca> pecasIntroduzida,
			String dataInicio, String dataFim, double custoMaoObra){
		this.arReparacao.get(idRep).setCarro(automovel);
		this.arReparacao.get(idRep).setPecasTiradas(pecasTirada);
		this.arReparacao.get(idRep).setPecasMetidas(pecasIntroduzida);
		this.arReparacao.get(idRep).setDataInicio(dataInicio);
		this.arReparacao.get(idRep).setDataFim(dataFim);
		this.arReparacao.get(idRep).setCustoMaoDeObra(custoMaoObra);
	}
	
	
	
}
