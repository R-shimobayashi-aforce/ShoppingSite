package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import jp.co.aforce.beans.Item;
import jp.co.aforce.beans.Product;

public class PurchaseDAO extends DAO {
public boolean insert(
	List<Item> cart, String name, String address) throws Exception{
		
		//DBで検索する
		Connection con=getConnection();
		con.setAutoCommit(false);

		for(Item item :cart) {
			PreparedStatement st=con.prepareStatement(
					"insert into purchase2 values(null, ?, ?, ?, ?, ?, ?)");
			Product p=item.getProduct();
			st.setString(1, p.getItem_id());
			st.setString(2, p.getItem_name());
			st.setInt(3, p.getPrice());
			st.setInt(4, item.getCount());
			st.setString(5, name);
			st.setString(6, address);
			
			//変更した行数を返す（正常な更新は1,失敗すると0）
			int line=st.executeUpdate();
			st.close();

			if(line!=1) {
				con.rollback();
				con.setAutoCommit(true);
				con.close();
				return false;
			}
		}
				con.commit();
				con.setAutoCommit(true);
				con.close();
				return true;

			}
}
