package tw.org.iii;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Panda21")
public class Panda21 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("image/jpeg");
		
		String strRate = request.getParameter("rate");

		float rate = Float.parseFloat(strRate);

		// Canvas => 400*20
		BufferedImage bimg = new BufferedImage(400, 20, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = bimg.createGraphics();

		// make pic
		g2d.setColor(Color.YELLOW);
		g2d.fillRect(0, 0, 400, 20);
		g2d.setColor(Color.BLUE);
		g2d.fillRect(0, 0, (int) (400 * rate / 100), 20);
		// Output
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		out.close();
	}

}
