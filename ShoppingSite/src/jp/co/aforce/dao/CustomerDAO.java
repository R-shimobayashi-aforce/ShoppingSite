package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.Customer;

public class CustomerDAO extends DAO {
	public Customer search(String user_id, String password) //テーブルからユーザーを検索する
			throws Exception {
		Customer customer = null;
		//見つかったらBeanを返す　見つからなかったらnullを返す

		//DAO親クラスのメソッドでDBに接続
		Connection con = getConnection();

		//20行目までSQLの実行
		PreparedStatement st;
		st = con.prepareStatement("select * from m_user where user_id=? and password=?");
		st.setString(1, user_id);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();

		//DBでの検索結果をBeanに保存
		while (rs.next()) {
			customer=new Customer();
			customer.setUser_id(rs.getString("user_id"));
			customer.setUser_name(rs.getString("user_name"));
			customer.setPassword(rs.getString("password"));

		}

		st.close();
		con.close();
		return customer;
	}

}
