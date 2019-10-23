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
@WebServlet("/perfil")
public class Perfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Perfil() {
		// TODO Auto-generated constructor stub
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String codigo = request.getParameter("codigo"); 
		String status = request.getParameter("status");
		String dica = request.getParameter("dica");
		String sexo = request.getParameter("sexo");
		String cpf = request.getParameter("cpf");
						
		try {
			
			if(UsuarioBO.incluir(nome, login, senha)) {
				try {

				Usuario usuario = new Usuario();
				
				usuario.setNm_usuario(nome);
				usuario.setEmail_usuario(email);
				usuario.setSn_usuario(senha);
				usuario.setCpf_usuario(cpf);
				usuario.setSt_usuario(status);
				usuario.setSx_usuario(sexo);
				usuario.setDica_usuario(dica);
				usuario.setLg_usuario(login);
				usuario.setCd_usuario(Integer.parseInt(codigo));
				
					UsuarioDAO dao = new UsuarioDAO();
					dao.atualizar(usuario.getNm_usuario(), usuario.getLg_usuario(), usuario.getSn_usuario(), usuario.getSt_usuario(), usuario.getCpf_usuario(), usuario.getSx_usuario(), usuario.getEmail_usuario(), String.valueOf(usuario.getCd_usuario()), usuario.getDica_usuario());
					HttpSession session = request.getSession(true);
					session.setAttribute("nome",usuario.getNm_usuario());
					session.setAttribute("login",usuario.getLg_usuario());
					session.setAttribute("email",usuario.getEmail_usuario());
					session.setAttribute("senha",usuario.getSn_usuario());
					session.setAttribute("dica", usuario.getDica_usuario());
					session.setAttribute("status",usuario.getSt_usuario());
					session.setAttribute("codigo",usuario.getCd_usuario());
					session.setAttribute("cpf",usuario.getCpf_usuario());
					session.setAttribute("sexo",usuario.getSx_usuario());
					
					System.out.println("Usuário atualizado");
					response.sendRedirect(request.getContextPath() + "/perfil.jsp");
				} catch (Exception e) {
					System.out.println("Erro ao atualizar: "+e);
					response.sendRedirect("perfil.jsp");
				}
				
			}
				else {
					System.out.println("ELSE" + nome + cpf + login + codigo);
					//response.sendRedirect(request.getContextPath() + "/entrar.jsp");
				}
			} catch (Exception e) {
				System.out.println("err" + e);
				//response.sendRedirect(request.getContextPath() + "/entrar.jsp");
			}
	}
}
