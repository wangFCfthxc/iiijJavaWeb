package tw.org.iii;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Panda26")
public class Panda26 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;      

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		out = response.getWriter();
		
		Cookie cookie1 = new Cookie("name", "panda");
		cookie1.setMaxAge(10*60);
		response.addCookie(cookie1);
		
		Cookie cookie2 = new Cookie("passwd", "123456");
		cookie2.setMaxAge(10*60);
		response.addCookie(cookie2);
		
	}



}
