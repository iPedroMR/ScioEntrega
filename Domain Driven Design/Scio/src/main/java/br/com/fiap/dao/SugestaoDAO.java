package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;


import br.com.fiap.beans.Sugestao;
import br.com.fiap.conexao.ConexaoFactory;

/**
 * Esta classe foi criada para fazer o CRUD com o banco de dados
 * @author Danielle, Guilherme
 *
 */

public class SugestaoDAO {

private Connection conexao;
	
	public SugestaoDAO() throws Exception {
		this.conexao = new ConexaoFactory().getConnection();
	}
	
	public void gravar(Sugestao s) throws Exception {
	String sql = "INSERT INTO \"RM83557\".\"TB_SUGESTAO\" (DS_SUGESTAO) VALUES (?)";
	PreparedStatement estrutura = conexao.prepareStatement(sql);
	estrutura.setString(1, s.getDs_sugestao());
	estrutura.execute();
	estrutura.close();
	}



	
	public int apagar(String x) throws Exception{
		PreparedStatement stmt = conexao.prepareStatement
	    ("delete from TB_SUGESTAO where CD_SUGESTAO = ?");
		stmt.setString(1, x);
		int saida = stmt.executeUpdate();
		stmt.close();
		return saida;
	}
	
	
	
}
