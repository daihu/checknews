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
	 * �����֤ͼ
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  // ��ջ�����
        response.reset();
 
        // ע�������MIME����
        response.setContentType("image/jpg");

        // ����ҳ�治����
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // ����һ�� 110X40 ��ͼ��,��֤����ʾ��ͼƬ��С
        BufferedImage image = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);

        // �õ�ͼ�λ������� g
        Graphics g = image.getGraphics();

        // ��䱳��
//        g.setColor(new Color(243,244,244));
        g.setColor(new Color(255,255,255));
        g.fillRect(0, 0, width, height);

        for (int i = 0; i < 4; i++)
        {
            drawCode(g, i);
        }

        //drawNoise(g, 10);

        // ���Ʊ߿�
        g.setColor(new Color(198,198,198));
        g.drawRect(0, 0, width - 1, height - 1);

        // ����֤�����ݱ����session�У�������֤�û������Ƿ���ȷʱʹ�� 
        HttpSession session = request.getSession(true);
        session.removeAttribute("valitdateCode");
        session.setAttribute("valitdateCode", codeNumbers);
        
        // �����ַ���
        codeNumbers = "";

        // ����ImageIO���write������ͼ����б���
        ServletOutputStream sos = response.getOutputStream();
        ImageIO.write(image, "JPG", sos);
        sos.close();
			 
	}
	
	

	
    //��֤������
    private Font[] codeFont =
    {
		new Font("Algerian", Font.BOLD,20), 
		new Font("Vivaldi", Font.BOLD, 20),
		new Font("Broadway", Font.BOLD,20),
		new Font("Forte", Font.BOLD, 19)
    };
    //��֤��������ɫ
    private Color[] color =
    {
       Color.BLACK, Color.BLACK, Color.BLACK, Color.BLACK
    };

	

    // ������֤��
    public void drawCode(Graphics graphics, int i)
    {
        int number = (int)(Math.random() * 10);
        graphics.setFont(codeFont[i]);
        graphics.setColor(color[i]);
        graphics.drawString("" + number, 10 + i * 17,22);

        codeNumbers += number;
    }

    // ���Ƹ�����
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
