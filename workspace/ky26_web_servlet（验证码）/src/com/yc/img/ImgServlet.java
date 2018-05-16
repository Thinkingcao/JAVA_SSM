package com.yc.img;

import java.awt.image.RenderedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ImgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("image/jpeg");//������Ӧͷ
		resp.setHeader("Pragema", "No-cache");
		resp.setHeader("cache-Control", "No-cache");
		resp.setDateHeader("Expries", 0);//����ҳ�治����
		Object[] os=new DrawImg().getImageAndCode();//���ɶ�ά��
		//System.out.println(os[1]);
		req.getSession().setAttribute("code", os[1]);//�����ɵĶ�ά��浽session��
		ImageIO.write((RenderedImage) os[0], "JPEG", resp.getOutputStream());
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sc=(String) req.getSession().getAttribute("code");
		String sr=req.getParameter("code");
		if(sc.equalsIgnoreCase(sr)){
			resp.getWriter().print("success");
		}else{
			resp.getWriter().print("err");
		}
	}

}
