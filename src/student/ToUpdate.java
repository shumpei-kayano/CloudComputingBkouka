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
 * Servlet implementation class ToUpdate
 */
@WebServlet("/manage/update")
public class ToUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try{
				String name = request.getParameter("name");
				int year = Integer.parseInt(request.getParameter("year"));
				int id = Integer.parseInt(request.getParameter("id"));

		//		StudentBeanを利用し、値の設定
				Student s = new Student();
				s.setId(id);
				s.setName(name);
				s.setYear(year);

		//		StudentDAOのupdateメソッドでデータを更新する
				StudentDAO dao=new StudentDAO();
				int line=dao.update(s);

				if(line>0) {
					//	更新完了画面へ
					  request.setAttribute("year",year);
					  request.getRequestDispatcher("/manage/student_comp2.jsp")
						.forward(request, response);
				}
		} catch (Exception e) {
			e.printStackTrace(out);
		}

	}

}
