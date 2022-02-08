package agencialaercio.model;

public class Viagem {
	private int id;
	private String viajante;
	private String destino;
	private boolean temGuia;
	
	public Viagem() {}
	
	public Viagem(int id, String viajante, String destino, boolean temGuia) {
		this.id = id;
		this.viajante = viajante;
		this.destino = destino;
		this.temGuia = temGuia;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getViajante() {
		return viajante;
	}

	public void setViajante(String viajante) {
		this.viajante = viajante;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public boolean isTemGuia() {
		return temGuia;
	}

	public void setTemGuia(boolean temGuia) {
		this.temGuia = temGuia;
	}
	
	
	
	
}

