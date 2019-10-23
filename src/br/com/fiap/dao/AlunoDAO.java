package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.fiap.beans.Aluno;
import br.com.fiap.conexao.Conexao;

public class AlunoDAO {

	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;

	// Recebendo conex�o
	public AlunoDAO() throws Exception {
		con = Conexao.getConnection();
	}

	// Fechando conex�o
	public void close() throws Exception {
		con.close();
	}

	// Funcionalidade: Validar chave primária
	public boolean getAluno(int codigo) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_ALUNO WHERE CD_USUARIO=?");
		stmt.setInt(1, codigo);
		rs = stmt.executeQuery();
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

	// Funcionalidade: Listar aluno
	public List<Aluno> listarAlunos() throws Exception {
		stmt = con.prepareStatement("SELECT U.CD_USUARIO," + "       U.NM_USUARIO," + "       D.NM_DISCIPLINA,"
				+ "       A.DS_EMAIL_ALUNO," + "       U.NR_CELULAR"
				+ "  FROM EMA_T_ALUNO A INNER JOIN EMA_T_MATRICULA M ON (A.CD_USUARIO = M.CD_USUARIO) INNER JOIN EMA_T_DISCIPLINA D ON (A.CD_USUARIO = M.CD_USUARIO)"
				+ "  INNER JOIN EMA_T_USUARIO U ON (U.CD_USUARIO = A.CD_USUARIO)");
		rs = stmt.executeQuery();
		List<Aluno> lista = new ArrayList<Aluno>();
		while (rs.next()) {
			Aluno aluno = new Aluno();
			aluno.setCodigo(rs.getInt("CD_USUARIO"));
			aluno.setNome(rs.getString("NM_USUARIO"));
			aluno.setDisciplina(rs.getString("NM_DISCIPLINA"));
			aluno.setEmail(rs.getString("DS_EMAIL_ALUNO"));
			aluno.setNumeroCelular(rs.getLong("NR_CELULAR"));
			lista.add(aluno);
		}
		close();
		return lista;
	}
	// Fim da Funcionalidade: Listar aluno

	public Aluno getAluno(String email) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_ALUNO WHERE DS_EMAIL_ALUNO=?");
		stmt.setString(1, email);
		rs = stmt.executeQuery();
		if (rs.next()) {
			Aluno objeto = new Aluno();
			objeto.setNome(rs.getString("NM_ALUNO"));
			objeto.setEmail(rs.getString("DS_EMAIL_ALUNO"));
			return objeto;
		} else {
			return null;
		}
	}

	// Funcionalidade: Adicionar aluno
	public void addUsuario(Aluno aluno) throws Exception {
		stmt = con.prepareStatement(
				"INSERT INTO EMA_T_USUARIO (cd_usuario , nm_usuario, nr_celular, nr_cpf, ds_sexo, dt_nascimento) VALUES (SQ_CD_USUARIO.NEXTVAL, ?, ? , ? , ?, TO_DATE( ?, 'DD/MM/YYYY'))");
		stmt.setString(1, aluno.getNome());
		stmt.setLong(2, aluno.getNumeroCelular());
		stmt.setString(3, aluno.getCpf());
		stmt.setString(4, String.valueOf(aluno.getSexo()));
		stmt.setString(5, aluno.getDataNascimento());
		stmt.executeUpdate();
		addAluno(aluno);
	}

	public void addAluno(Aluno aluno) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE NR_CPF = ?");
		stmt.setString(1, aluno.getCpf());
		rs = stmt.executeQuery();
		if (rs.next()) {
			aluno.setCodigo(rs.getInt("CD_USUARIO"));

			stmt = con.prepareStatement(
					"INSERT INTO EMA_T_ALUNO (CD_USUARIO , DS_EMAIL_ALUNO , DS_SENHA_ALUNO) VALUES (?, ?, ?)");
			stmt.setInt(1, aluno.getCodigo());
			stmt.setString(2, aluno.getEmail());
			stmt.setString(3, aluno.getSenha());
			stmt.executeUpdate();
			addMatricula(aluno);
		}
	}

	public void addMatricula(Aluno aluno) throws Exception {
		Date data = new Date(System.currentTimeMillis());
		SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy");
		stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE NR_CPF = ?");
		stmt.setString(1, aluno.getCpf());
		rs = stmt.executeQuery();

		if (rs.next()) {
			aluno.setCodigo(rs.getInt("CD_USUARIO"));
			stmt = con.prepareStatement(
					"INSERT INTO EMA_T_MATRICULA (CD_USUARIO , CD_DISCIPLINA, DT_MATRICULA) VALUES (?, 1, TO_DATE(? , 'DD/MM/YYYY'))");
			stmt.setInt(1, aluno.getCodigo());
			stmt.setString(2, formatador.format(data));
			stmt.executeUpdate();
		}
	}
	// Fim da Funcionalidade: Adicionar aluno

	// Funcionalidade: Deletar aluno
	public int deleteAluno(String email, int codigo) throws Exception {
		stmt = con.prepareStatement("DELETE FROM EMA_T_MATRICULA WHERE CD_USUARIO=?");
		stmt.setInt(1, codigo);
		stmt.executeUpdate();

		stmt = con.prepareStatement("DELETE FROM EMA_T_ALUNO WHERE DS_EMAIL_ALUNO=?");
		stmt.setString(1, email);
		stmt.executeUpdate();

		stmt = con.prepareStatement("DELETE FROM EMA_T_ENDERECO WHERE CD_USUARIO=?");
		stmt.setInt(1, codigo);
		stmt.executeUpdate();

		stmt = con.prepareStatement("DELETE FROM EMA_T_USUARIO WHERE CD_USUARIO=?");
		stmt.setInt(1, codigo);
		return stmt.executeUpdate();

	}

	// Funcionalidade: Logar
	public Aluno logarAluno(String email, String senha) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_ALUNO WHERE DS_EMAIL_ALUNO = ? AND DS_SENHA_ALUNO = ?");
		stmt.setString(1, email);
		stmt.setString(2, senha);
		rs = stmt.executeQuery();
		if (rs.next()) {
			Aluno aluno = new Aluno();
			aluno.setCodigo(rs.getInt("CD_USUARIO"));
			stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE CD_USUARIO = ?");
			stmt.setInt(1, aluno.getCodigo());
			rs = stmt.executeQuery();
			if (rs.next()) {
				aluno.setNome(rs.getString("NM_USUARIO"));
				return aluno;
			}
		}
		return null;
	}

	// Consultar email
	public Aluno getEmail(String email) throws Exception {
		stmt = con.prepareStatement("SELECT DS_EMAIL_ALUNO FROM EMA_T_ALUNO WHERE DS_EMAIL_ALUNO = ?");
		stmt.setString(1, email);
		rs = stmt.executeQuery();
		if (rs.next()) {
			Aluno aluno = new Aluno();
			aluno.setEmail(rs.getString("DS_EMAIL_ALUNO"));
			return aluno;
		}
		return null;
	}

	// Consultar CPF
	public Aluno getCpf(String cpf) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE NR_CPF = ?");
		stmt.setString(1, cpf);
		rs = stmt.executeQuery();
		if (rs.next()) {
			Aluno aluno = new Aluno();
			aluno.setCodigo(rs.getInt("CD_USUARIO"));
			return aluno;
		}
		return null;
	}

	// Funcionalidade Recuperar senha
	public int updateSenha(String senha, String email, String cpf) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM EMA_T_ALUNO A WHERE A.DS_EMAIL_ALUNO = ?");
		stmt.setString(1, email);
		rs = stmt.executeQuery();
		if (rs.next()) {
			Aluno aluno = new Aluno();
			aluno.setCodigo(rs.getInt("CD_USUARIO"));

			stmt = con.prepareStatement("SELECT * FROM EMA_T_USUARIO WHERE CD_USUARIO = ? AND NR_CPF = ?");
			stmt.setInt(1, aluno.getCodigo());
			stmt.setString(2, cpf);
			rs = stmt.executeQuery();

			if (rs.next()) {
				stmt = con.prepareStatement(
						"UPDATE EMA_T_ALUNO SET DS_EMAIL_ALUNO = ?, DS_SENHA_ALUNO = ? WHERE CD_USUARIO = ?");
				stmt.setString(1, email);
				stmt.setString(2, senha);
				stmt.setInt(3, aluno.getCodigo());
				return stmt.executeUpdate();
			} else {
				return 0;
			}
		} else {
			return 0;
		}

	}

//	//Funcionalidade: Atualizar aluno
//	public int updateAluno(Aluno objeto) throws Exception {
//		stmt = con.prepareStatement("UPDATE TABELA_HIDEWARE SET NR_CPF=?, DT_NASCIMENTO=?, DS_EMAIL=?, DS_FACULDADE=?, NM_ALUNO=?, NR_CELULAR=?, DS_SENHA=?, NR_TELEFONE=? WHERE CD_ALUNO=?");
//		stmt.setInt(1, objeto.getCpf());
//		stmt.setString(2, objeto.getDataNascimento());
//		stmt.setString(3, objeto.getEmail());
//		stmt.setString(4, objeto.getFaculdade());
//		stmt.setString(5, objeto.getNome());
//		stmt.setInt(6, objeto.getNumeroCelular());
//		stmt.setString(7, objeto.getSenha());
//		stmt.setInt(8, objeto.getTelefone());
//		
//		return stmt.executeUpdate();
//	}

}
