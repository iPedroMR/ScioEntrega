package br.com.fiap.servers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.Usuario;
import br.com.fiap.bo.UsuarioBO;
import br.com.fiap.dao.UsuarioDAO;

/**
 * Servlet implementation class Cadastro
 */
@WebServlet("/cadastro")
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Cadastro() {
		// TODO Auto-generated constructor stub
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String sexo = request.getParameter("sexo");
		String login = request.getParameter("login");
		String dica = request.getParameter("dica");
		String cpf = request.getParameter("cpf");
				
		try {
			
			if(UsuarioBO.incluir(nome, login, senha)) {
				
				Usuario usuario = new Usuario();
				
				usuario.setNm_usuario(nome);
				usuario.setEmail_usuario(email);
				usuario.setSn_usuario(senha);
				usuario.setSx_usuario(sexo);
				usuario.setSt_usuario("Ativo");
				usuario.setLg_usuario(login);
				usuario.setCpf_usuario(cpf);
				usuario.setDica_usuario(dica);
				
				try {
					UsuarioDAO dao = new UsuarioDAO();
					dao.gravar(usuario);
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
					System.out.println("Usuário gravado");
					response.sendRedirect(request.getContextPath() + "/index.jsp");
				} catch (Exception e) {
					System.out.println("Erro ao gravar: "+e);
					response.sendRedirect("entrar.jsp");
				}
				
			}
				else {
					response.sendRedirect(request.getContextPath() + "/entrar.jsp");
				}
			} catch (Exception e) {
				System.out.println("err" + e);
				response.sendRedirect(request.getContextPath() + "/entrar.jsp");
			}
	}
}
