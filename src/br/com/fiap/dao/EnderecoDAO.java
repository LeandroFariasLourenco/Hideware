package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.fiap.beans.Endereco;
import br.com.fiap.conexao.Conexao;

public class EnderecoDAO {
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	public EnderecoDAO() throws Exception {
		con = Conexao.getConnection();
	}

	public void close() throws Exception {
		con.close();
	}

	public int cadastrarEndereco(Endereco endereco, String cpf) throws Exception {
		
		stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE NR_CPF = ?");
		stmt.setString(1, cpf);
		rs = stmt.executeQuery();
		if(rs.next()) {
			stmt = con.prepareStatement("INSERT INTO EMA_T_ENDERECO (CD_USUARIO , NR_CEP , NM_RUA , NM_CIDADE , NM_UF , NM_BAIRRO) VALUES (?,?,?,?,?,?)");
			stmt.setInt(1, rs.getInt("CD_USUARIO"));
			stmt.setInt(2, endereco.getCep());
			stmt.setString(3, endereco.getRua());
			stmt.setString(4, endereco.getCidade());
			stmt.setString(5, endereco.getUf());
			stmt.setString(6, endereco.getBairro());
			return stmt.executeUpdate();
		}
			return 0;
	}
}
