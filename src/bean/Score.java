package bean;

public class Score implements java.io.Serializable {

	private int id;
	private int studentId;
	private int times;
	private int rika;
	private int kokugo;
	private int eigo;
	private int syakai;
	private int sugaku;

	private Student student;

//	---------ゲッター--------
	public int getId() {
		return id;
	}
	public int getStudentId() {
		return studentId;
	}
	public int getTimes() {
		return times;
	}
	public int getRika() {
		return rika;
	}
	public int getKokugo() {
		return kokugo;
	}
	public int getEigo() {
		return eigo;
	}
	public int getSyakai() {
		return syakai;
	}
	public int getSugaku() {
		return sugaku;
	}
	public Student getStudent(){
		return student;
	}
//	public String getName() {
//		return name;
//	}
//	public int getYear() {
//		return year;
//	}
//	---------セッター--------
	public void setId(int id) {
		this.id=id;
	}
	public void setStudentId(int studentId) {
		this.studentId=studentId;
	}
	public void setTimes(int times) {
		this.times=times;
	}
	public void setRika(int rika) {
		this.rika=rika;
	}
	public void setKokugo(int kokugo) {
		this.kokugo=kokugo;
	}
	public void setEigo(int eigo) {
		this.eigo=eigo;
	}
	public void setSyakai(int syakai) {
		this.syakai=syakai;
	}
	public void setSugaku(int sugaku) {
		this.sugaku=sugaku;
	}
	public void setStudent(Student student) {
		this.student=student;
	}
//	public void setName(String name) {
//		this.name=name;
//	}
//	public void setYear(int year) {
//		this.year=year;
//	}
}
