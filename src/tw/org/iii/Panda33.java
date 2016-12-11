package tw.org.iii;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Panda33")
public class Panda33 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;
	private MyCart myCart;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		out = response.getWriter();
		
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		Integer Lottery = (Integer)session.getAttribute("lottery");
		myCart = (MyCart)session.getAttribute("cart");
		if (name == null){
			response.sendRedirect("Panda32");
			return;
		}
		
		out.println("Panda33<hr>");
		out.print(name + ":" + Lottery);
		out.println("<a href='Panda34'>Panda34</a>");
		out.println("<a href='Panda35'>Logout</a>");
		
		myCart.addItem("apple", 10);
		myCart.addItem("pen", 20);
	}

}
