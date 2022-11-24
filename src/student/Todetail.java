package student;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;

/**
 * Servlet implementation class Todetail
 */
@WebServlet("/manage/detail")
public class Todetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Todetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		//	idは確実に来ている。。。
		Student s = new Student();
		StudentDAO dao=new StudentDAO();
			try {
				s = dao.selectOne(id);
			} catch (Exception e) {
				e.printStackTrace();
			}
		//学生をsetAttributeでJSPに渡す
		  request.setAttribute("s",s);
		  request.getRequestDispatcher("/manage/student_detail.jsp")
			.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
