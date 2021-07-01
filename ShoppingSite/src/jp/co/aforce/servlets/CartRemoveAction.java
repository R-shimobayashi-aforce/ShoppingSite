package jp.co.aforce.servlets;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Item;

public class CartRemoveAction extends Action {
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		//customer属性のセッション取得
		HttpSession session = request.getSession();
		
		String item_id=request.getParameter("id");
		
		//cart属性のセッション取得
	List<Item> cart=(List<Item>)session.getAttribute("cart");
	
	//
	for(Item i : cart) {
		if (i.getProduct().getItem_id().equals(item_id)) {
			cart.remove(i);
			break;
		}
	}
		return "/views/Cart.jsp";
	}
	
	
}