package br.com.fiap.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.Aluno;
import br.com.fiap.beans.Professor;
import br.com.fiap.bo.AlunoBO;
import br.com.fiap.bo.ProfessorBO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	HttpSession session;

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parametro = request.getParameter("acao");

		try {
			if (parametro.contentEquals("deslogar")) {
				session.invalidate();

				response.sendRedirect("index.jsp");
			}
		} catch (Exception e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parametro = request.getParameter("acao");

		if (parametro.equals("logar")) {
			request.setCharacterEncoding("utf-8");
			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			try {
				AlunoBO boAluno = new AlunoBO();
				if (email.contains("ADM.")) {
					ProfessorBO pfBO = new ProfessorBO();
					if (pfBO.logarProfessor(email, senha) != null) {
						Professor professor = pfBO.logarProfessor(email, senha);
						
						session = request.getSession();
						String nomeProfessor = professor.getNome();
						session.setAttribute("username", nomeProfessor);
						
						response.sendRedirect("aea-professor.jsp");
					} else {
						request.setAttribute("msg", "usuario ou senha invalidos !");
						request.getRequestDispatcher("login.jsp").forward(request, response);		
					}
				} else if (boAluno.logarAluno(email, senha) != null) {
					Aluno aluno = boAluno.logarAluno(email, senha);
					session = request.getSession();
					session.setAttribute("username", aluno.getNome());
					session.setAttribute("userId", aluno.getCodigo());
					response.sendRedirect("aea-do-aluno.jsp");
				} else {
					request.setAttribute("msg", "usuario ou senha invalidos !");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
