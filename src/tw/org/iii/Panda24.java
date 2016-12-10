package tw.org.iii;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.scene.layout.BackgroundImage;


@WebServlet("/Panda24")
public class Panda24 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg");
		
		String imgPath = getServletContext().getInitParameter("imgs-path");
		File imgBg = new File(imgPath, "back.jpg");
		// Canvas => back.jpg
		BufferedImage bimg = ImageIO.read(imgBg);
		Graphics2D g2d = bimg.createGraphics();
		
		// drawing.
		Font font = new Font(null, Font.BOLD+Font.ITALIC, 50);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(10),400,0);
		Font newfont = font.deriveFont(tran);
		
		g2d.setFont(font);
		g2d.setColor(Color.BLUE);
		g2d.drawString("Hello,World", 100, 100);
		
		g2d.setFont(newfont);
		g2d.setColor(Color.RED);
		g2d.drawString("Hello,World", 100, 100);
		
		// Output
				OutputStream out = response.getOutputStream();
				ImageIO.write(bimg, "jpeg", out);
				out.close();
	}




}
