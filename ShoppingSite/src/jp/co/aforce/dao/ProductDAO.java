package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import jp.co.aforce.beans.Product;

public class ProductDAO extends DAO {
	private List<Product> list = new ArrayList<>();

	//DBで検索する
	public List<Product> showAllList() {

		//DAO親クラスのメソッドでDBに接続
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource) ic.lookup(
					"java:/comp/env/jdbc/shoppingsite");
			Connection con = getConnection();
			{

				//DBから全てのデータを取得
				String sql = "select * from m_item";
				PreparedStatement ps = con.prepareStatement(sql);

				//SQL文の実行
				ResultSet rs = ps.executeQuery();

				//検索結果rsから一行ずつ取り出し、Productに書き込み
				while (rs.next()) {
					Product product = new Product();
					product.setItem_id(rs.getString("item_id"));
					product.setItem_name(rs.getString("item_name"));
					product.setPrice(rs.getInt("price"));
					product.setFile(rs.getString("file"));
					list.add(product); //書き込み終了後listへ追加
				}

				//SQl切断
				rs.close();
				con.close();

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}
}
