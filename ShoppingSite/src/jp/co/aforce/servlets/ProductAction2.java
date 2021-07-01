package jp.co.aforce.servlets;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Product;
import jp.co.aforce.dao.ProductDAO;

@WebServlet("/ProductAction2")
public class ProductAction2 extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		//セッション取得
		HttpSession session = request.getSession();
	
		Connection con =null;
		Statement stmt = con.createStatement();
 	   String sql="select * from m_item";
 	   ResultSet rs=stmt.executeQuery(sql);
 	   
 	  while(rs.next()) {
		   String item_id=rs.getString("item_id");
		   String item_name=rs.getString("item_name");
		   String price=rs.getString("price");
	
	//検索実行
	ProductDAO dao = new ProductDAO();
	@SuppressWarnings("unchecked")
	List<Product> list = (List<Product>) stmt.executeQuery(sql);

	session.setAttribute("list",list);
 	  }
	return "/views/product.jsp"	;
}
}