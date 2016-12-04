package tw.org.iii;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Panda16")
public class Panda16 extends HttpServlet {
	private PrintWriter out;
	private Connection conn = null;
	private String[] fields = {"id","account","passwd","realname"};
	
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
		}catch(Exception e){
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		
		String type = request.getParameter("type");
		String delid = request.getParameter("delid");
		if (type!=null && type.equals("add")){
			// insert into
			String account = request.getParameter("account"); 
			String passwd = request.getParameter("passwd"); 
			String realname = request.getParameter("realname"); 
			addData(account,passwd,realname);
		}else if(delid!= null){
			delData(delid);
		}
		
		outHTML(queryData());
		
		
		
	}
	
	private void addData(String account,String passwd,String realname){
		try {
			PreparedStatement pstmt = 
					conn.prepareStatement(
							"insert into member (account,passwd,realname) " +
							"values (?,?,?)");
			pstmt.setString(1, account);
			pstmt.setString(2, passwd);
			pstmt.setString(3, realname);
			pstmt.execute();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
	}

	private void delData(String id){
		try {
			PreparedStatement pstmt = 
					conn.prepareStatement(
							"delete from member where id = ?");
			pstmt.setString(1, id);
			pstmt.execute();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
	}	
	
	private ArrayList<HashMap<String,String>> queryData(){
		ArrayList<HashMap<String,String>> data = new ArrayList<>();
		try {
			PreparedStatement pstmt = 
					conn.prepareStatement("SELECT * FROM member");
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()){
				HashMap<String,String> row = new HashMap<>();
				for (String field : fields){
					row.put(field, rs.getString(field));
				}
				data.add(row);
			}
			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return data;
	}
	
	private void outHTML(ArrayList<HashMap<String,String>> data){		
		out.println("<script>function isDelete(name){return confirm('Delete ' + name + ' ?');}</script>");
		out.println("<h1>Panda Big Company</h1><hr>");
		out.println("<a href='panda17.html'>AddNew</a>");
		out.print("<table border='1' width='100%'>");
		out.print("<tr>");
		out.print("<th>Id.</th>");
		out.print("<th>Account</th>");
		out.print("<th>Password</th>");
		out.print("<th>RealName</th>");
		out.print("<th>Delete</th>");
		out.print("</tr>");
		
		for (HashMap<String,String> row : data){
			out.print("<tr>");
			for (String field : fields){
				out.print(String.format("<td>%s</td>",row.get(field)));
			}
			out.print(String.format(
					"<td><a href=?delid=%s onclick='return isDelete(\"%s\");'>Delete</a></td>",
					row.get(fields[0]), row.get(fields[1])));
			out.print("</tr>");
		}
		
		out.print("</table>");
	}
	

}