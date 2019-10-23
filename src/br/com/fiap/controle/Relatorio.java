package br.com.fiap.controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.beans.Aluno;
import br.com.fiap.bo.AlunoBO;

/**
 * Servlet implementation class Relatorio
 */
@WebServlet("/Relatorio")
public class Relatorio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Relatorio() {
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

		try {
			String acao = request.getParameter("acao");
			if (acao.equals("remover")) {
				remover(request, response);
			}
		} catch (Exception e) {

		} finally {
			AlunoBO BO = new AlunoBO();
			List<Aluno> aluno = new ArrayList<Aluno>();
			try {
				aluno = BO.listarAlunos();
			} catch (Exception e) {
				e.printStackTrace();
			}

			request.setCharacterEncoding("utf-8");
			request.setAttribute("dados", aluno);
			request.getRequestDispatcher("relatorio.jsp").forward(request, response);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void remover(HttpServletRequest request, HttpServletResponse response) throws Exception {
		AlunoBO BO = new AlunoBO();

		String email = request.getParameter("email");
		int codigo = Integer.parseInt(request.getParameter("codigo"));
		
		BO.removerAluno(email , codigo);
	}
}
