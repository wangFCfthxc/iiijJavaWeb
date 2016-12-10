package tw.org.iii;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;


@WebServlet("/Panda18")
public class Panda18 extends HttpServlet {
	private PrintWriter out;
	private static int workload = 12;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		
		String pass1 = "123456";
		String pass2 = hashPassword(pass1);
		out.print(pass1 + " => " + pass2 + "<br>");
		
		String pass3 = hashPassword(pass1);
		out.print(pass1 + " => " + pass3 + "<br>");
		
		if (checkPassword("123456", pass2)){
			out.println("OK");
		}else{
			out.println("XX");
		}
	}
	
	
	public static String hashPassword(String password_plaintext) {
		String salt = BCrypt.gensalt(workload);
		String hashed_password = BCrypt.hashpw(password_plaintext, salt);

		return(hashed_password);
	}

	public static boolean checkPassword(String password_plaintext, String stored_hash) {
		boolean password_verified = false;

		if(null == stored_hash || !stored_hash.startsWith("$2a$"))
			throw new java.lang.IllegalArgumentException("Invalid hash provided for comparison");

		password_verified = BCrypt.checkpw(password_plaintext, stored_hash);

		return(password_verified);
	}



}
