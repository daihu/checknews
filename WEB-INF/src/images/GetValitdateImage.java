package images;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;




public class GetValitdateImage  extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	
		doPost(request, response);
	}


    String codeNumbers = "";

    int width = 73, height = 22;
	
	/**
	 * 输出验证图
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  // 清空缓冲区
        response.reset();
 
        // 注意这里的MIME类型
        response.setContentType("image/jpg");

        // 设置页面不缓存
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // 创建一个 110X40 的图像,验证码显示的图片大小
        BufferedImage image = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);

        // 得到图形环境对象 g
        Graphics g = image.getGraphics();

        // 填充背景
//        g.setColor(new Color(243,244,244));
        g.setColor(new Color(255,255,255));
        g.fillRect(0, 0, width, height);

        for (int i = 0; i < 4; i++)
        {
            drawCode(g, i);
        }

        //drawNoise(g, 10);

        // 绘制边框
        g.setColor(new Color(198,198,198));
        g.drawRect(0, 0, width - 1, height - 1);

        // 将验证码内容保存进session中，用于验证用户输入是否正确时使用 
        HttpSession session = request.getSession(true);
        session.removeAttribute("valitdateCode");
        session.setAttribute("valitdateCode", codeNumbers);
        
        // 重设字符串
        codeNumbers = "";

        // 利用ImageIO类的write方法对图像进行编码
        ServletOutputStream sos = response.getOutputStream();
        ImageIO.write(image, "JPG", sos);
        sos.close();
			 
	}
	
	

	
    //验证码字体
    private Font[] codeFont =
    {
		new Font("Algerian", Font.BOLD,20), 
		new Font("Vivaldi", Font.BOLD, 20),
		new Font("Broadway", Font.BOLD,20),
		new Font("Forte", Font.BOLD, 19)
    };
    //验证码数字颜色
    private Color[] color =
    {
       Color.BLACK, Color.BLACK, Color.BLACK, Color.BLACK
    };

	

    // 绘制验证码
    public void drawCode(Graphics graphics, int i)
    {
        int number = (int)(Math.random() * 10);
        graphics.setFont(codeFont[i]);
        graphics.setColor(color[i]);
        graphics.drawString("" + number, 10 + i * 17,22);

        codeNumbers += number;
    }

    // 绘制干扰线
    public void drawNoise(Graphics graphics, int lineNumber)
    {
        graphics.setColor(new Color(126,142,152));
        for (int i = 0; i < lineNumber; i++)
        {
            int pointX1 = 1 + (int)(Math.random() * width);
            int pointY1 = 1 + (int)(Math.random() * height);
            int pointX2 = 1 + (int)(Math.random() * width);
            int pointY2 = 1 + (int)(Math.random() * height);
            graphics.drawLine(pointX1, pointY1, pointX2, pointY2);
        }
    }    
}
