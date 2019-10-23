package br.com.fiap.bo;
import java.util.InputMismatchException;
import java.util.List;

import br.com.fiap.beans.Aluno;
import br.com.fiap.dao.AlunoDAO;

public class AlunoBO {
	private AlunoDAO dao;

	
	//Funcionalidade: Adicionar aluno
	public String cadastrarAluno(Aluno aluno) throws Exception {
		dao = new AlunoDAO();
		if (dao.getEmail(aluno.getEmail()) != null) {
			dao.close();
			return "Email já cadastrado";
		}

		if (dao.getCpf(aluno.getCpf()) != null) {
			dao.close();
			return "Cpf já cadastrado";
		}

		if (!validarCPF(aluno.getCpf())) {
			dao.close();
			return "Cpf inválido";
		}

		if (aluno.getSenha().length() < 6) {
			dao.close();
			return "A senha tem menos de 6 digitos";
		}

		if (dao.getAluno(aluno.getCodigo())) {
			dao.close();
			return "Erro no sistema";
		}
		
		dao.addUsuario(aluno);
		dao.close();
		return "Cadastrado com sucesso";
	}

	// MÉTODO PARA VALIDAR O CPF
	public boolean validarCPF(String cpf) {
		if (cpf.equals("00000000000") || cpf.equals("11111111111") || cpf.equals("22222222222")
				|| cpf.equals("33333333333") || cpf.equals("44444444444") || cpf.equals("55555555555")
				|| cpf.equals("66666666666") || cpf.equals("77777777777") || cpf.equals("88888888888")
				|| cpf.equals("99999999999") || (cpf.length() != 11)) {
			return false;
		}
		char digito10 , digito11;
		int soma, indice, r , numero, peso;
		
		try {
		soma = 0;
		peso = 10;
		for(indice = 0; indice < 9; indice++) {
			//Convertendo o char em inteiro, (48 é a posição de 0 no ASCII)
			numero = (int)(cpf.charAt(indice) - 48);
			soma = soma + (numero * peso);
			peso = peso - 1;
		}
		
		r = 11 - (soma % 11);
		if ((r == 10) || (r == 11)){
			digito10 = '0';
		} else {
			digito10 = (char)(r + 48);
		}
		
		soma = 0;
		peso = 11;
		for(indice = 0; indice < 10; indice ++){
			numero = (int)(cpf.charAt(indice) - 48);
			soma = soma + (numero * peso);
			peso = peso - 1;
		}
		
		r = 11 - (soma % 11);
		if((r == 10) || (r == 11)) {
			digito11 = '0';
		} else {
			digito11 = (char)(r + 48);
		}
		
		if((digito10 == cpf.charAt(9)) && (digito11 == cpf.charAt(10))) {
			return true;
		} else {
			return false;
		}
		} catch(InputMismatchException erroDeConversao) {
			return false;
		}
	}
	//Fim da funcionalidade: Adicionar aluno
	
	
	
	
	//Funcionalidade: Listar aluno
	public List<Aluno> listarAlunos() throws Exception {
		dao = new AlunoDAO();
		List <Aluno> alunos = dao.listarAlunos();
		dao.close();
		return alunos;
	}
	//Fim da funcionalidade: Listar aluno;
	
	
	
	
	public void removerAluno(String email , int codigo) throws Exception {
		dao = new AlunoDAO();
		dao.deleteAluno(email , codigo);
		dao.close();
	}

	public String alterarSenha(String senha, String email, String cpf) throws Exception {
		dao = new AlunoDAO();
		int retorno = dao.updateSenha(senha, email, cpf);
		if (retorno == 0) {
			dao.close();
			return "Usuário não encontrado";
		} else {
			dao.close();
			return "Senha alterada com sucesso";
		}
	}
	
	public Aluno logarAluno(String email , String senha) throws Exception{
		dao = new AlunoDAO();
		if(dao.logarAluno(email, senha) != null) {
			Aluno aluno = new Aluno();
			aluno = dao.logarAluno(email, senha);
			dao.close();
			return aluno;
		} else {
			dao.close();
			return null;
		}
	}
}
