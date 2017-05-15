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
	
	
	
}
