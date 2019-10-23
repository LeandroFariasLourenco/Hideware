package br.com.fiap.bo;

import br.com.fiap.beans.Professor;
import br.com.fiap.dao.ProfessorDAO;

public class ProfessorBO {
	ProfessorDAO dao;
	
	public Professor logarProfessor(String email , String senha) throws Exception{
		dao = new ProfessorDAO();
		if(dao.getProfessor(email , senha) != null){
			Professor prof = dao.getProfessor(email , senha);
			dao.close();
			return prof;
		} else {
			dao.close();
			return null;
		}
		
	}
}
