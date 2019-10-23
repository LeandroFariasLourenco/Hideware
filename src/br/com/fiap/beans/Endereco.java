package br.com.fiap.beans;

public class Endereco {
	private int codigoAluno;
	private String rua;
	private int cep;
	private String uf;
	private String bairro;
	private String cidade;
	
	public Endereco() {
		super();
	}
	
	public Endereco(int codigo, String rua, int cep, String uf, String bairro, String cidade) {
		super();
		this.codigoAluno = codigo;
		this.rua = rua;
		this.cep = cep;
		this.uf = uf;
		this.bairro = bairro;
		this.cidade = cidade;
	}
	
	public int getCodigo() {
		return codigoAluno;
	}
	public void setCodigo(int codigo) {
		this.codigoAluno = codigo;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public int getCep() {
		return cep;
	}
	public void setCep(int cep) {
		this.cep = cep;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	
}
