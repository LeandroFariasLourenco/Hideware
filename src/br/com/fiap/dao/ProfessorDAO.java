package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.fiap.beans.Professor;
import br.com.fiap.conexao.Conexao;

public class ProfessorDAO {

	private Connection con;
	private ResultSet rs;
	private PreparedStatement stmt;

	public ProfessorDAO() throws Exception {
		con = Conexao.getConnection();
	}

	public void close() throws Exception {
		con.close();
	}

	public Professor getProfessor(String email, String senha) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_ADM WHERE DS_EMAIL_ADM = ? AND DS_SENHA_ADM = ?");
		stmt.setString(1, email);
		stmt.setString(2, senha);
		
		rs = stmt.executeQuery();
		
		if (rs.next()) {
			Professor p = new Professor();
			p.setCodigo(rs.getInt("CD_USUARIO"));

			stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE CD_USUARIO = ?");
			
			stmt.setInt(1, p.getCodigo());
			rs = stmt.executeQuery();
			if (rs.next()) {
				p.setNome(rs.getString("NM_USUARIO"));
				return p;
			}
			return null;

		} else {
			return null;
		}
	}
}
