package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Product;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns= {"/jp.co.servlets/CartGet"})
public class CartGet extends HttpServlet{
	
	@SuppressWarnings("unchecked")
	public void doGet(
		HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out =response.getWriter();
			Page.header(out);
			
			//既存のセッションを取得
			HttpSession session=request.getSession();
			
			//セッション属性からリストを取得
			List<Product> cart=(List<Product>)session.getAttribute("cart");
					if(cart!=null) {
						for(Product p : cart) {
							out.println("<p>");
							out.println(p.getItem_name());
							out.println(":");
							out.println(p.getPrice());
							out.println("</p>");
						}
					}
					Page.footer(out);
		}
}


