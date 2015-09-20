package cn.com.ambow.ects.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�˳���ʵ����session����
		HttpSession session = request.getSession();
		//session ����֮ǰҪsession�������
		session.removeAttribute("user");
		//session ����
		session.invalidate();
		ServletContext context = getServletContext();
		request.getRequestDispatcher("/registerSucceed.jsp").forward(request, response);

	}

}
