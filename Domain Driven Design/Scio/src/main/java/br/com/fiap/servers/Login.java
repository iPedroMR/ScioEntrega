package br.com.fiap.servers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.*;
import br.com.fiap.dao.UsuarioDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nomeUsuario = request.getParameter("login");
		String senha = request.getParameter("senha");
									
			try {
				UsuarioDAO dao = new UsuarioDAO();
				Usuario usuario = dao.validaUsuario(nomeUsuario, senha);
				if(usuario.getLg_usuario() != null) {
					HttpSession session = request.getSession(true);
					session.setAttribute("nome",usuario.getNm_usuario());
					session.setAttribute("login",usuario.getLg_usuario());
					session.setAttribute("email",usuario.getEmail_usuario());
					session.setAttribute("senha",usuario.getSn_usuario());
					session.setAttribute("status",usuario.getSt_usuario());
					session.setAttribute("codigo",usuario.getCd_usuario());
					session.setAttribute("cpf",usuario.getCpf_usuario());
					session.setAttribute("dica", usuario.getDica_usuario());
					session.setAttribute("sexo",usuario.getSx_usuario());

					response.sendRedirect(request.getContextPath() + "/index.jsp");
				}else {
					response.sendRedirect(request.getContextPath() +"/entrar.jsp");
				}				

			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}

}
