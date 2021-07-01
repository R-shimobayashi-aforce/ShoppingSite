package jp.co.aforce.servlets;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Item;

public class PreviewAction extends Action {
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		//customer属性のセッション取得
		HttpSession session = request.getSession();
		
		//属性が空ならログインページへ
		if(session.getAttribute("customer")==null){
		return "/views/preview_error_login.jsp";
	}

	//cart属性のセッション取得
	List<Item> cart=(List<Item>)session.getAttribute("cart");
	
	//属性が空ならエラーページへ
	if(cart==null || cart.size()==0) {
		return "/views/preview_error_cart.jsp";
	}
	
	//購入画面へ
	return "/views/purchase_in.jsp";
}
}