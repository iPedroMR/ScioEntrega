package br.com.fiap.servers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.*;
import br.com.fiap.dao.SugestaoDAO;
import br.com.fiap.dao.UsuarioDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/sugerir")
public class Sugerir extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sugerir() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String s = request.getParameter("sugestao");
		Sugestao sugestao = new Sugestao();
		sugestao.setDs_sugestao(s);
									
			try {
				SugestaoDAO dao = new SugestaoDAO();
				dao.gravar(sugestao);
				response.sendRedirect(request.getContextPath() + "/materia.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}

}
