package services;

import java.util.ArrayList;

import model.Peca;

public class SPeca {

	private ArrayList<Peca> arPeca;
	private SReparacao rep;
	public SPeca(){
		//rPeca = new ArrayList<>();
		rep = new SReparacao();
	}

	public ArrayList<Peca> getArPeca() {
		return arPeca;
	}

	public void setArPeca(ArrayList<Peca> arPeca) {
		this.arPeca = arPeca;
	}
	
	public void addPecaM(int idR,int id,String nomePeca, String descricaoPeca, double precoPeca){
		Peca p = new Peca(id,nomePeca,descricaoPeca,precoPeca);
		rep.getArReparacao().get(idR).getPecasMetidas().add(p);
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
				rep.getArReparacao().get(i).getPecasMetidas().get(j).setIdPeca(rep.getArReparacao().get(i).getPecasMetidas().get(j).getIdPeca()-1);
			}
			
		}
	}
	
	public void editarPecaM(int idRep,int idPeca,String nomePeca, String descricaoPeca, double precoPeca){
		this.rep.getArReparacao().get(idRep).getPecasMetidas().get(idPeca).setNomePeca(nomePeca);
		this.rep.getArReparacao().get(idRep).getPecasMetidas().get(idPeca).setDescricaoPeca(descricaoPeca);
		this.rep.getArReparacao().get(idRep).getPecasMetidas().get(idPeca).setPrecoPeca(precoPeca);
	}
	
	
	
	
}
