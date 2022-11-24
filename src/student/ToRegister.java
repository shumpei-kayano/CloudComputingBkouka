package student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;

/**
 * Servlet implementation class ToRegister
 */
@WebServlet("/register")
public class ToRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * kouka/registerへgetアクセスの時、register.jspを返す
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("register/student_register.jsp")
		.forward(request, response);
	}

	/**
	 *kouka/regisuterへpostアクセスの時、DB登録処理をしてリダイレクト
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post送信されたリクエスト情報をutf-8にエンコード
		request.setCharacterEncoding("utf-8");
		response.setContentType("UTF-8");
		PrintWriter out=response.getWriter();
		try{
				String name = request.getParameter("name");
				int year = Integer.parseInt(request.getParameter("year"));

		//		StudentBeanを利用し、値の設定
				Student s = new Student();
				s.setName(name);
				s.setYear(year);

		//		StudentDAOでinsertメソッドでデータを挿入する
				StudentDAO dao=new StudentDAO();
				int line=dao.insert(s);

				if(line>0) {
//					kouka/registerへリダイレクト
					  String url = "/kouka/register/comp";
					  response.sendRedirect(url);
				}
		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}

}
