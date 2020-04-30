package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Usuario;
import manager.BeanUsuario;

@WebServlet("/ControllerUsuarioLogin")
public class ControllerUsuarioLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Usuario a = new Usuario();
			a.setEmail(request.getParameter("email"));
			a.setSenha(request.getParameter("senha"));
			Usuario resposta = BeanUsuario.findByUsuario(a);
			HttpSession session = request.getSession(true);
			session.setAttribute("usuario", resposta);
			response.sendRedirect("saida.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
			e.getMessage();
			request.setAttribute("msg", "Error " + e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
