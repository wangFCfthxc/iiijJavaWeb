package tw.org.iii;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Panda19")
public class Panda19 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;
	private Connection conn = null;
	
	@Override
	public void init() throws ServletException {
		super.init();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Properties prop = new Properties();
			prop.setProperty("user", "root");
			prop.setProperty("password", "root");
			conn = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/iii", prop);
			Statement stmt = conn.createStatement();
			stmt.execute("SET NAME UTF8");
			
			
		}catch(Exception e){
		}
	}
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String account = request.getParameter("account"); 
		String passwd = request.getParameter("passwd"); 

		try{
			PreparedStatement pstmt = 
					conn.prepareStatement("SELECT * FROM member WHERE account = ?");
			pstmt.setString(1, account);
			ResultSet rs = pstmt.executeQuery();
			if (rs.first()){
				String passwdHash = rs.getString("passwd");
				if (PandaUtils.checkPassword(passwd, passwdHash)){
					out.print("OK");
				}else{
					out.println("Password Fail");
				}
			}else{
				out.println("Account not exist");
			}
			
			
		}catch(Exception ee){
			
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
