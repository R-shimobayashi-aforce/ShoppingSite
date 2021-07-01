package jp.co.aforce.servlets;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Product;
import jp.co.aforce.dao.SearchDAO;

public class SearchAction extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		//セッション取得
		HttpSession session = request.getSession();
	
	//リクエストパラメータから入力されたキーワードを取得
	String keyword = request.getParameter("keyword");
	if(keyword==null) keyword=""; //nullの場合は空文字とし、全体を検索する

	//検索実行
	SearchDAO dao = new SearchDAO();
	List<Product> list = dao.search(keyword);

	session.setAttribute("list",list);
	return "/views/product.jsp"	;
}
}