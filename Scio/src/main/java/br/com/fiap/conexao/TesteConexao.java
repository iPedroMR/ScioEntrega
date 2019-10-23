package br.com.fiap.conexao;

import  br.com.fiap.conexao.ConexaoFactory;
import java.sql.*;


public class TesteConexao {

	public static void main(String[] args) throws Exception {
		Connection c = null;
		try {
			c = new ConexaoFactory().getConnection();
			System.out.println("Conexao Aberta");
		}catch (Exception e) {
			System.out.println("Erro de conexao");
		}finally {
			try {
				c.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}
