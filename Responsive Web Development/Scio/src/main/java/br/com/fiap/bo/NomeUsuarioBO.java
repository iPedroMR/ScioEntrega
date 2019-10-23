package br.com.fiap.bo;

public class NomeUsuarioBO {
	public static boolean validar(String pNomeUsuario, String pSenha) {
		boolean resultado = false;

		try {
			if (pNomeUsuario.length() < 4) {
				resultado = false;
			} else {
				resultado = true;
			}
			return resultado;
		} catch (Exception e) {
			System.out.print("Erro: ");
			e.printStackTrace();
		}
		return resultado;
	}

}
