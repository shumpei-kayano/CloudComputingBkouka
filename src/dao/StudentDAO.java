package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO {


	// ----------検索を行うselectAllメソッド---------
	public List<Student> selectAll(int entranceYear) throws Exception {
		//StudentBeanを利用してStudent型の配列を作成
		List<Student> list=new ArrayList<>();

		//親のDAOクラスを利用してDB接続
		Connection con=getConnection();

		//SQLの実行
		PreparedStatement st=con.prepareStatement("select * from student where entrance_year = ?");
		//1番目のプレースホルダーにバインド
		st.setInt(1, entranceYear);
		ResultSet rs=st.executeQuery();

		// StudentBeanを利用してレコード分listに設定
		while (rs.next()) {
			Student s=new Student();
			s.setId(rs.getInt("id"));
			s.setName(rs.getString("student_name"));
			s.setYear(rs.getInt("entrance_year"));
			list.add(s);
		}

		//DBからの切断
		st.close();
		con.close();

		return list;
	}

	// ---------挿入を行うinsertメソッド---------
	public int insert(Student student) throws Exception {
		Connection con=getConnection();

		PreparedStatement st1 = con.prepareStatement("select * from student");
		ResultSet rs =st1.executeQuery();
		//挿入の最終行を取得
		rs.last();
//		最終行+1の行番号を設定
		int number_of_row = rs.getRow() + 1;
		String name = student.getName();
//		nameをUTF-8に変換
		String cname = new String(name.getBytes("Shift_JIS"), "Shift_JIS");
//		プリペアドステートメントの作成
		PreparedStatement st2=con.prepareStatement("insert into student values(?, ?, ?)");
//		値のバインド
		st2.setInt(1, number_of_row);
		st2.setString(2, cname);
		st2.setInt(3, student.getYear());
		int line=st2.executeUpdate();

		st1.close();
		st2.close();
		con.close();
		return line;
	}
}
