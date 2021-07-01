package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.beans.Product;

public class SearchDAO extends DAO {

	public List<Product> search(String keyword) throws Exception{
		
		List<Product> list = new ArrayList<>();

		//DBで検索する
		Connection con=getConnection();
		PreparedStatement st = con.prepareStatement("select * from m_item where item_name like ?");
		st.setString(1,"%"+keyword+"%");

				//SQL文の実行
				ResultSet rs = st.executeQuery();

				//検索結果rsから一行ずつ取り出し、Productに書き込み
				while (rs.next()) {
					Product p = new Product();
					p.setItem_id(rs.getString("item_id"));
					p.setItem_name(rs.getString("item_name"));
					p.setPrice(rs.getInt("price"));
					p.setFile(rs.getString("file"));
					list.add(p); //書き込み終了後listへ追加
				}

				//SQl切断
				rs.close();
				con.close();
				
				return list;

			}
}
