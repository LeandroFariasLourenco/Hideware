package br.com.fiap.bo;

import br.com.fiap.beans.Endereco;
import br.com.fiap.dao.EnderecoDAO;

public class EnderecoBO {
	private EnderecoDAO dao;
	
	public boolean cadastrarEndereco(Endereco endereco , String cpf) throws Exception{
		dao = new EnderecoDAO();

		endereco.getBairro().toUpperCase();
		endereco.getCidade().toUpperCase();
		endereco.getRua().toUpperCase();
		endereco.getUf().toUpperCase();
		
		dao.cadastrarEndereco(endereco , cpf);
		dao.close();
		return true;
	}
}
