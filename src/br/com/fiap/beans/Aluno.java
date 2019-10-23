package br.com.fiap.beans;

public class Aluno extends Usuario implements Comparable<Aluno>{
	private String senha;
	private String email;
	private String disciplina;
	
	public Aluno( ) {
		super();
	};
	
	public Aluno(int codigo, String nome, long telefone, String disciplina, String email, String cpf, String senha, int codigoEndereco, char sexo ) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.email = email;
		this.cpf = cpf;
		this.disciplina = disciplina;
		this.senha = senha;
		this.numeroCelular = telefone;
		this.codigoEndereco = codigoEndereco;
		this.sexo = sexo;
	}

	public int compareTo(Aluno a){
		return nome.compareTo(a.getNome());
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(String disciplina) {
		this.disciplina = disciplina;
	}
	
}
