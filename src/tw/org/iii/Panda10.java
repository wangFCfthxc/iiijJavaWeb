package tw.org.iii;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Panda10")
public class Panda10 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		// 針對中文檔名處理, 必須在任何  request之前做的設定
		request.setCharacterEncoding("UTF-8");
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Panda11?name=Panda&price=123<br>");
		// include , forward
		
		LinkedList<HashMap<String,Integer>> line = new LinkedList<>();
		HashMap<String,Integer> d0 = new HashMap<>();
		d0.put("x", 12);d0.put("y", 22);
		line.add(d0);
		
		HashMap<String,Integer> d1 = new HashMap<>();
		d1.put("x", 33);d1.put("y", 44);
		line.add(d1);
		
		HashMap<String,Integer> d2 = new HashMap<>();
		d2.put("x", 55);d2.put("y", 66);
		line.add(d2);
		
		request.setAttribute("linedata", line);		
		
		out.println("<h1>Panda Big Company</h1>");
		out.print("<hr>");
		dispatcher.include(request, response);
//		dispatcher.forward(request, response);
		out.println("<hr>");
		out.println("Copyleft");
		
		
		
		
		
	}

}
