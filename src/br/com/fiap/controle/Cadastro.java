package br.com.fiap.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.beans.Aluno;
import br.com.fiap.beans.Endereco;
import br.com.fiap.bo.AlunoBO;
import br.com.fiap.bo.EnderecoBO;

/**
 * Servlet implementation class Eservlet
 */
@WebServlet("/Eservlet")
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Cadastro() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String estado = "";
		boolean sucesso = false;
		try {
			estado = cadastrar(request, response);
			if (estado.equals("Cadastrado com sucesso")) {
				sucesso = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (sucesso) {
			request.setAttribute("retorno", estado);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.setAttribute("retorno", estado);
			request.getRequestDispatcher("cadastro.jsp").forward(request, response);
		}
	}

	private String cadastrar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String nome = request.getParameter("nome");
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");
		String cpf = request.getParameter("cpf");
		String senha = request.getParameter("senha");
		String nascimento = request.getParameter("dtNascimento");
		String sexo = request.getParameter("genero");
		
		String cep = request.getParameter("cep");
		String rua = request.getParameter("rua");
		String cidade = request.getParameter("cidade");
		String bairro = request.getParameter("bairro");
		String estado = request.getParameter("estado");

		Aluno aluno = new Aluno();
		Endereco endereco = new Endereco();

		aluno.setNome(nome);
		aluno.setNumeroCelular(Long.parseLong(telefone));
		aluno.setEmail(email);
		aluno.setCpf(cpf);
		aluno.setSenha(senha);
		aluno.setDataNascimento(nascimento);
		aluno.setSexo(sexo.charAt(0));

		endereco.setBairro(bairro);
		endereco.setCep(Integer.parseInt(cep));
		endereco.setCidade(cidade);
		endereco.setUf(estado);
		endereco.setRua(rua);

		AlunoBO boAluno = new AlunoBO();
		EnderecoBO boEndereco = new EnderecoBO();
		
		String estadoCadastro = boAluno.cadastrarAluno(aluno);
		if(estadoCadastro.equals("Cadastrado com sucesso")) {
			boEndereco.cadastrarEndereco(endereco , cpf); 
		}
		return estadoCadastro;
	}

}
