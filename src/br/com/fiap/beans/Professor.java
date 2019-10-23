package br.com.fiap.beans;

public class Professor extends Usuario implements Comparable<Professor>{
	private String email;
	private String senha;
	
	public Professor() {
		super();
	}
	
	public Professor(int codigo, String nome, String email, String senha, char sexo, String cpf, int codigoEndereco, long numeroCelular) {
		this.codigo = codigo;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.sexo = sexo;
		this.cpf = cpf;
		this.codigoEndereco = codigoEndereco;
		this.numeroCelular = numeroCelular;
	}
	
	public int compareTo(Professor a){
		return nome.compareTo(a.getNome());
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
