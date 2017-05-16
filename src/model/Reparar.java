package model;

import java.util.ArrayList;

public class Reparar {

	public Reparar(){
		
	}
	
	public Reparar(int irReparacao, Carro carro, ArrayList<Peca> pecasTiradas, ArrayList<Peca> pecasMetidas,
			String dataInicio, String dataFim, double custoMaoDeObra) {
		super();
		this.idReparacao = irReparacao;
		this.carro = carro;
		this.pecasTiradas = pecasTiradas;
		this.pecasMetidas = pecasMetidas;
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
		CustoMaoDeObra = custoMaoDeObra;
	}

	private int idReparacao;
	private Carro carro;
	private ArrayList<Peca> pecasTiradas;
	private ArrayList<Peca> pecasMetidas;
	private String dataInicio;
	private String dataFim;
	private double CustoMaoDeObra;
	
	
	public int getIrReparacao() {
		return idReparacao;
	}

	public void setIrReparacao(int irReparacao) {
		this.idReparacao = irReparacao;
	}

	public Carro getCarro() {
		return carro;
	}

	public void setCarro(Carro carro) {
		this.carro = carro;
	}

	public ArrayList<Peca> getPecasTiradas() {
		return pecasTiradas;
	}

	public void setPecasTiradas(ArrayList<Peca> pecasTiradas) {
		this.pecasTiradas = pecasTiradas;
	}

	public ArrayList<Peca> getPecasMetidas() {
		return pecasMetidas;
	}

	public void setPecasMetidas(ArrayList<Peca> pecasMetidas) {
		this.pecasMetidas = pecasMetidas;
	}

	public String getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}

	public String getDataFim() {
		return dataFim;
	}

	public void setDataFim(String dataFim) {
		this.dataFim = dataFim;
	}

	public double getCustoMaoDeObra() {
		return CustoMaoDeObra;
	}

	public void setCustoMaoDeObra(double custoMaoDeObra) {
		CustoMaoDeObra = custoMaoDeObra;
	}
	
	

}
