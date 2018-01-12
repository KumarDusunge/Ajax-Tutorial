package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyAjaxServlet
 */

@WebServlet("/MyAjaxServlet")
public class MyAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String s = request.getParameter("sid");

		if (s.equals("admin")) {
			response.getWriter().write("Login success");
		} else {
			response.getWriter().write("Login Failed..Try Again..!!!!");
		}

	}
}
