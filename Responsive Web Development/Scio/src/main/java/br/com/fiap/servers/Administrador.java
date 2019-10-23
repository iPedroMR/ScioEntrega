package br.com.fiap.servers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class Administrador
 */
@WebServlet("/administrador")
public class Administrador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Administrador() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	String page="administrador.jsp";


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
			try {
				UsuarioDAO dao = new UsuarioDAO();
				dao.apagar(codigo);				
				System.out.println("Apagado com Sucesso");
				response.sendRedirect("administrador");
			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)

		    throws ServletException,IOException
		{
		try {


		  PrintWriter out = response.getWriter();

		  ResultSet rs;

		  response.setContentType("text/html");
		  

		  ArrayList<Usuario> dataList = null;
		  
			UsuarioDAO dao = new UsuarioDAO();
			dataList = dao.getUsuarios();
			
			request.setAttribute("data",dataList);

			  //Disptching request

			  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

			  if (dispatcher != null){

			  dispatcher.forward(request, response);

			  } 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		  }
}
