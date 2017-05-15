package model;

public class Peca {
	
	public Peca(){
		
	}
	
	public Peca(int idPeca, String nomePeca, String descricaoPeca, double precoPeca) {
		super();
		this.idPeca = idPeca;
		this.nomePeca = nomePeca;
		this.descricaoPeca = descricaoPeca;
		this.precoPeca = precoPeca;
	}

	private int idPeca;
	private String nomePeca;
	private String descricaoPeca;
	private double precoPeca;
	
	
	public int getIdPeca() {
		return idPeca;
	}

	public void setIdPeca(int idPeca) {
		this.idPeca = idPeca;
	}

	public String getNomePeca() {
		return nomePeca;
	}

	public void setNomePeca(String nomePeca) {
		this.nomePeca = nomePeca;
	}

	public String getDescricaoPeca() {
		return descricaoPeca;
	}

	public void setDescricaoPeca(String descricaoPeca) {
		this.descricaoPeca = descricaoPeca;
	}

	public double getPrecoPeca() {
		return precoPeca;
	}

	public void setPrecoPeca(double precoPeca) {
		this.precoPeca = precoPeca;
	}

	

}
