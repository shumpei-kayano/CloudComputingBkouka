package bean;

public class Student implements java.io.Serializable {

	private int id;
	private String name;
	private int year;

	private Score score;

//	---------ゲッター-----------
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public int getYear() {
		return year;
	}
	public Score getScore() {
		return score;
	}

//	---------セッター----------
	public void setId(int id) {
		this.id=id;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setYear(int year) {
		this.year=year;
	}
	public void setScore(Score score) {
		this.score=score;
	}
}
