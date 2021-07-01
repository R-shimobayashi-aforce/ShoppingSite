package jp.co.aforce.servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse response
			)throws Exception{
		
		HttpSession session=request.getSession();
		
		//ログインしている場合
		if(session.getAttribute("customer")!=null)
		{
		session.removeAttribute("customer");
		return "/views/logout-out.jsp";
		
		}
		
		//ログインしていない場合
		return "/views/logout-error.jsp";
		}

}
