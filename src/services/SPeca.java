package services;

import java.util.ArrayList;

import model.Peca;

public class SPeca {

	private ArrayList<Peca> arPeca;
	private SReparacao rep;
	public SPeca(){
		arPeca = new ArrayList<>();
		rep = new SReparacao();
	}

	public ArrayList<Peca> getArPeca() {
		return arPeca;
	}

	public void setArPeca(ArrayList<Peca> arPeca) {
		this.arPeca = arPeca;
	}
	
	public void addPeca(int id,String nomePeca, String descricaoPeca, double precoPeca){
		Peca p = new Peca(id,nomePeca,descricaoPeca,precoPeca);
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
	
	public void elimPecaM(int idR,int idPM){
		rep.getArReparacao().get(idR).getPecasMetidas().remove(idPM);
		for(int i=idR;i<rep.getArReparacao().size();i++){
			for(int j=idPM;j<rep.getArReparacao().get(i).getPecasMetidas().size();j++){
				//arPeca.get(i).setIdPeca(arPeca.get(i).getIdPeca()-1);
				rep.getArReparacao().get(i).setPecasMetidas();
			}
			
		}
	}
	
	public void editarPeca(int idPeca,String nomePeca, String descricaoPeca, double precoPeca){
		this.arPeca.get(idPeca).setNomePeca(nomePeca);
		this.arPeca.get(idPeca).setDescricaoPeca(descricaoPeca);
		this.arPeca.get(idPeca).setPrecoPeca(precoPeca);
	}
	
	
	
	
}
