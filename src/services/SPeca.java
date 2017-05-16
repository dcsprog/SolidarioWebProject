package services;

import java.util.ArrayList;

import model.Peca;

public class SPeca {

	private ArrayList<Peca> arPeca;
	
	public SPeca(){
		
		arPeca = new ArrayList<>();
	}

	public ArrayList<Peca> getArPeca() {
		return arPeca;
	}

	public void setArPeca(ArrayList<Peca> arPeca) {
		this.arPeca = arPeca;
	}
	
	public void addPeca(String nomePeca, String descricaoPeca, double precoPeca){
		Peca p = new Peca(arPeca.size(),nomePeca,descricaoPeca,precoPeca);
		arPeca.add(p);
	}
	
	public Peca listaPeca(int idP){
		Peca p = new Peca();
		for(Peca ps: arPeca){
			if(idP == arPeca.get(idP).getIdPeca()){
				p = ps;
			}
		}
		return p;
	}
	
	public void elimPeca(int id){
		arPeca.remove(id);
		for(int i=id;i<arPeca.size();i++){
			arPeca.get(i).setIdPeca(arPeca.get(i).getIdPeca()-1);
		}
	}
	
	public void editarPeca(int idPeca,String nomePeca, String descricaoPeca, double precoPeca){
		this.arPeca.get(idPeca).setNomePeca(nomePeca);
		this.arPeca.get(idPeca).setDescricaoPeca(descricaoPeca);
		this.arPeca.get(idPeca).setPrecoPeca(precoPeca);
	}
	
	
	
	
}
