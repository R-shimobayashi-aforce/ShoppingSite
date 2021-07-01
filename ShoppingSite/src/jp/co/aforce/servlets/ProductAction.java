package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class ProductAction extends HttpServlet{
	
	public ProductAction() {
		super();
	}


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
       PrintWriter out=response.getWriter();
       out.println("<html>");
       out.println("<head>");
       out.println("<titlel>商品一覧</title>");
       out.println("</head>");
       out.println("</html>");
       
       Connection con =null;
       String url="jdbc:mysql://localhost/shoppingsite";
       String user = "root";
       String password="";
       
       try {
    	   Class.forName("com.mysql.jdbc.Driver");
    	   con = DriverManager.getConnection(url, user, password);
    	   
    	   Statement stmt = con.createStatement();
    	   String sql="select * from m_item";
    	   ResultSet rs=stmt.executeQuery(sql);
    	   
    	   while(rs.next()) {
    		   String item_id=rs.getString("item_id");
    		   String item_name=rs.getString("item_name");
    		   String price=rs.getString("price");
    		   out.println("<p>");
    		   out.println("商品番号:"+item_id+",商品名:"+item_name+ ",単価"+price);
    		   out.println("<img src = \"img/"+item_name+".jpg\" height=\"64\">");
    		   out.println("</p>");
    		   
    		   
    	   }
    	   rs.close();
    	   stmt.close();
       }catch(SQLException e) {
    	   out.println("SQLException:" +e.getMessage());
       }catch(Exception e) {
    	   out.println("Exception:" + e.getMessage());
       }finally {
    	   try {if(con!=null) {
    		   con.close();
    	   }
       
    	
    	   }catch(SQLException e) {
        	   out.println("SQLException:" + e.getMessage());
       }
       }
       out.println("</body>");
       out.println("</html>");
    }
}