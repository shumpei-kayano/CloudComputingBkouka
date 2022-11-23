package bean;

public class Test implements java.io.Serializable {

	private int id;
	private int studentId;
	private int studentClass;
	private int rika;
	private int kokugo;
	private int eigo;
	private int syakai;
	private int sugaku;

//	---------ゲッター--------
	public int getId() {
		return id;
	}
	public int getStudentId() {
		return studentId;
	}
	public int getStudentClass() {
		return studentClass;
	}
	public int rika() {
		return rika;
	}
	public int kokugo() {
		return kokugo;
	}
	public int eigo() {
		return eigo;
	}
	public int syakai() {
		return syakai;
	}
	public int sugaku() {
		return sugaku;
	}
//	---------セッター--------
	public void setId(int id) {
		this.id=id;
	}
	public void setStudentId(int studentId) {
		this.studentId=studentId;
	}
	public void setStudentClass(int studentClass) {
		this.studentClass=studentClass;
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
}
