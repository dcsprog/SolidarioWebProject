package services;

import java.util.ArrayList;

import model.Carro;

public class SCarro {

	private ArrayList<Carro> arCarros;
	
	public SCarro(){
		
		arCarros = new ArrayList<>();
	}

	public ArrayList<Carro> getArCarros() {
		return arCarros;
	}

	public void setArCarros(ArrayList<Carro> arCarros) {
		this.arCarros = arCarros;
	}
	
	
	public void addCarro(int idCarro, String marca, String modelo, String cc, String cv, String lugares, String matricula,
			String combustivel, String primeiroRegisto, String kmsInicial, boolean estadoCarro){
			Carro c = new Carro(idCarro, marca,modelo,cc,cv,lugares,matricula,combustivel,primeiroRegisto,kmsInicial,estadoCarro);
			arCarros.add(c);
	}
	
	public Carro procurarCar(int idCar){
		
		Carro cs =	new Carro();
		for(Carro c:arCarros){
			if(idCar == c.getIdCarro()){
				cs = c;
			}
		}
		return cs;
	}
	
	public void elimCarro(int id){
		arCarros.remove(id);
		for(int i=id;i<arCarros.size();i++){
			arCarros.get(i).setIdCarro(arCarros.get(i).getIdCarro()-1);
		}
	}
	
	public void editarCar(int idCarro, String marca, String modelo, String cc, String cv, String lugares, String matricula,
			String combustivel, String primeiroRegisto, String kmsInicial, boolean estadoCarro){
		this.arCarros.get(idCarro).setMarca(marca);
		this.arCarros.get(idCarro).setModelo(modelo);
		this.arCarros.get(idCarro).setCc(cc);
		this.arCarros.get(idCarro).setCv(cv);
		this.arCarros.get(idCarro).setLugares(lugares);
		this.arCarros.get(idCarro).setMatricula(matricula);
		this.arCarros.get(idCarro).setCombustivel(combustivel);
		this.arCarros.get(idCarro).setPrimeiroRegisto(primeiroRegisto);
		this.arCarros.get(idCarro).setKmsInicial(kmsInicial);
		this.arCarros.get(idCarro).setEstadoCarro(estadoCarro);	
	}
	
	
}
