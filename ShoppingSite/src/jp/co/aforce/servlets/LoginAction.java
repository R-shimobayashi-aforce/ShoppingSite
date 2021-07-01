package jp.co.aforce.servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Customer;

public class LoginAction extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		//SQL実行前準備

		//セッション開始宣言
		HttpSession session = request.getSession();
		Customer ab = (Customer) session.getAttribute("account");

		//リクエストパラメータからidとpass取得
		//CustomerDAOのsearchメソッドを使いDBから検索
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		jp.co.aforce.dao.CustomerDAO dao = new jp.co.aforce.dao.CustomerDAO();
		Customer customer = dao.search(user_id, password);

		if (customer != null) {

			if (user_id.equals("20180101")) {
				return "/views/admin.jsp";
			} else {
				session.setAttribute("customer", customer);
				return "/views/login_out.jsp";

			}
		} else {
			return "/views/login_error.jsp";
		}
	}
}