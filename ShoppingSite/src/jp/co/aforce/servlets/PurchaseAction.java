package jp.co.aforce.servlets;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Item;
import jp.co.aforce.dao.PurchaseDAO;

public class PurchaseAction extends Action {
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		//customer属性のセッション取得
		HttpSession session = request.getSession();
		
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		
		//属性が空ならログインページへ
		if(name.isEmpty() || address.isEmpty()){
		return "/views/purchase_error_empty.jsp";
	}
		
		PurchaseDAO dao=new PurchaseDAO();
		
		//cart属性のセッション取得
		List<Item> cart=(List<Item>)session.getAttribute("cart");
	
	//属性が空ならエラーページへ
		if(cart==null || !dao.insert(cart, name, address)) {
		return "/views/purchase_error_insert.jsp";
	}
	
	//購入完了のためカート内削除
	session.removeAttribute("cart");
	return "/views/purchase_out.jsp";
}
}