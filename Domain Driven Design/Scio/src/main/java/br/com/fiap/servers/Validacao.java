package br.com.fiap.servers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Validacao
 */
@WebServlet("/Validacao")
public class Validacao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Validacao() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean isFormValido = true;
		try {
			String nomeUsuario = request.getParameter("nomeUsuario");
			String senha = request.getParameter("senha");
			if (nomeUsuario.isEmpty() || senha.isEmpty()) {
				request.setAttribute("erro", "Você não preencheu todos os campos!");
				isFormValido = false;

			}

		} catch (NullPointerException e) {
			request.setAttribute("erro", "Você não preencheu todos os campos!");
			isFormValido = false;
		}
	}

}
