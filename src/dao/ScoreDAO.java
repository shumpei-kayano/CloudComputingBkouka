package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Score;
import bean.Student;

public class ScoreDAO extends DAO {

	// ----------指定年度学生取得のscoreSelectメソッド---------
	public List<Student> scoreSelect(int entranceYear, int times) throws Exception {
		//StudentBeanを利用してStudent型の配列を作成
		List<Student> list=new ArrayList<>();

		//親のDAOクラスを利用してDB接続
		Connection con=getConnection();

		//指定年度の学生一覧の取得  学生番号の昇順
		PreparedStatement st1=con.prepareStatement("select * from student where entrance_year = ? order by id asc");
		//プレースホルダーにバインド
		st1.setInt(1, entranceYear);
		ResultSet rs1=st1.executeQuery();

		//成績表の取得 学生番号の昇順
		PreparedStatement st2=con.prepareStatement("select * from score where times = ? order by student_id asc");
		//プレースホルダーにバインド
		st2.setInt(1, times);
		ResultSet rs2=st2.executeQuery();

		// 学生一覧と成績一覧を比較しながら指定学年の学生人数分の成績リストを作成
		while (rs1.next()) {
			Student stu = new Student();
			int flg = 0;
			while(rs2.next()){
				if(rs1.getInt("id") == rs2.getInt("student_id")){
					Score sc=new Score();
					sc.setStudentId(rs1.getInt("id"));
					sc.setId(rs2.getInt("id"));
					sc.setTimes(times);
					sc.setRika(rs2.getInt("rika"));
					sc.setKokugo(rs2.getInt("kokugo"));
					sc.setEigo(rs2.getInt("eigo"));
					sc.setSyakai(rs2.getInt("syakai"));
					sc.setSugaku(rs2.getInt("sugaku"));
					stu.setId(rs1.getInt("id"));
					stu.setName(rs1.getString("student_name"));
					stu.setYear(rs1.getInt("entrance_year"));
					stu.setScore(sc);
					list.add(stu);
					flg = 1;
					break;
				}
			}
			if(flg==0){
				//	成績が無かった場合は成績0点を代入
				Score sc = new Score();
				sc.setStudentId(rs1.getInt("id"));
				sc.setTimes(times);
				sc.setRika(0);
				sc.setKokugo(0);
				sc.setEigo(0);
				sc.setSyakai(0);
				sc.setSugaku(0);
				stu.setId(rs1.getInt("id"));
				stu.setName(rs1.getString("student_name"));
				stu.setYear(rs1.getInt("entrance_year"));
				stu.setScore(sc);
				list.add(stu);
			}
		}

		//DBからの切断
		st1.close();
		st2.close();
		con.close();

		return list;
	}

	// ---------更新を行うscoreUpdateメソッド---------
	public int scoreUpdate(Score sc) throws Exception {
		Connection con=getConnection();

//		String name = student.getName();
////		nameをUTF-8に変換
//		String cname = new String(name.getBytes("UTF-8"), "UTF-8");
//		プリペアドステートメントの作成
		PreparedStatement st=con.prepareStatement("UPDATE score SET rika = ?, kokugo = ? , eigo = ?, syakai = ?, sugaku = ? where id = ?");
//		値のバインド
		st.setInt(1, sc.getRika());
		st.setInt(2, sc.getKokugo());
		st.setInt(3, sc.getEigo());
		st.setInt(4, sc.getSyakai());
		st.setInt(5, sc.getSugaku());
		st.setInt(6, sc.getId());

		int line=st.executeUpdate();

		st.close();
		con.close();

		return line;
	}
}
