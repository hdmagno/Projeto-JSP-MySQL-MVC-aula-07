package manager;

import java.util.ArrayList;
import java.util.List;

import entity.Usuario;

public class BeanUsuario {

	public static List<Usuario> usuarios = new ArrayList<>();
	static {
		usuarios.add(new Usuario(10L, "Amanda", "amanda@gmail.com", "1234"));
	}

	public static void adicionar(Usuario u) {
		usuarios.add(u);
	}

	public static Usuario findByUsuario(Usuario u) {
		Usuario resposta = usuarios.stream().filter(x -> x.getEmail().equals(u.getEmail())& x.getSenha().equals(u.getSenha()))
				.findAny().orElseThrow(() -> new IllegalArgumentException("Usuario não encontrado"));
		return resposta;
	}
}
