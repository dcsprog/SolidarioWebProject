package model;

public class Carro {

	public Carro(){
		
	}
	
	

	public Carro(int idCarro, String marca, String modelo, String cc, String cv, String lugares, String matricula,
			String combustivel, String primeiroRegisto, String kmsInicial, boolean estadoCarro) {
		super();
		this.idCarro = idCarro;
		this.marca = marca;
		this.modelo = modelo;
		this.cv = cv;
		this.cc = cc;
		this.lugares = lugares;
		this.matricula = matricula;
		this.combustivel = combustivel;
		this.primeiroRegisto = primeiroRegisto;
		this.kmsInicial = kmsInicial;
		this.estadoCarro = estadoCarro;
	}

	private int idCarro;
    private String marca;
    private String modelo;
    private String cv;
    private String cc;
    private String lugares;
    private String matricula;
    private String combustivel;
    private String primeiroRegisto;
    private String kmsInicial;
    private boolean estadoCarro;
    
    
	public int getIdCarro() {
		return idCarro;
	}



	public void setIdCarro(int idCarro) {
		this.idCarro = idCarro;
	}



	public String getMarca() {
		return marca;
	}



	public void setMarca(String marca) {
		this.marca = marca;
	}



	public String getModelo() {
		return modelo;
	}



	public void setModelo(String modelo) {
		this.modelo = modelo;
	}



	public String getCv() {
		return cv;
	}



	public void setCv(String cv) {
		this.cv = cv;
	}



	public String getCc() {
		return cc;
	}



	public void setCc(String cc) {
		this.cc = cc;
	}



	public String getLugares() {
		return lugares;
	}



	public void setLugares(String lugares) {
		this.lugares = lugares;
	}



	public String getMatricula() {
		return matricula;
	}



	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}



	public String getCombustivel() {
		return combustivel;
	}



	public void setCombustivel(String combustivel) {
		this.combustivel = combustivel;
	}



	public String getPrimeiroRegisto() {
		return primeiroRegisto;
	}



	public void setPrimeiroRegisto(String primeiroRegisto) {
		this.primeiroRegisto = primeiroRegisto;
	}



	public String getKmsInicial() {
		return kmsInicial;
	}



	public void setKmsInicial(String kmsInicial) {
		this.kmsInicial = kmsInicial;
	}



	public boolean getEstadoCarro() {
		return estadoCarro;
	}



	public void setEstadoCarro(boolean estadoCarro) {
		this.estadoCarro = estadoCarro;
	}
    
    
    
}