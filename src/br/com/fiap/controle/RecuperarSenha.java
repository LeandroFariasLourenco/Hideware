package br.com.fiap.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.bo.AlunoBO;

/**
 * Servlet implementation class RecuperarSenha
 */
@WebServlet("/RecuperarSenha")
public class RecuperarSenha extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RecuperarSenha() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		AlunoBO BO = new AlunoBO();
		
		try {
			String retorno = BO.alterarSenha(senha, email, cpf);
			if(retorno.equals("Usuário não encontrado")) {
				request.setAttribute("retorno", retorno);
				request.getRequestDispatcher("recupea-senha.jsp").forward(request, response);
			} else {
				request.setAttribute("retorno" , retorno);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
