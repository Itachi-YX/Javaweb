package cn.bbs.swu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println(req.getContextPath());

        String user = req.getParameter("inputEmail");
        String pass = req.getParameter("inputPassword");
        try{
                System.out.println(new String(user.getBytes("ISO-8859-1"), "UTF-8"));
        }
        catch(Exception e) {
                System.out.println("encoding error");
        }
        System.out.println(pass);
        System.out.println("test");

		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
}

