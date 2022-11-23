package student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;

/**
 * Servlet implementation class ToList
 */
@WebServlet("/manage/list")
public class ToList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		  String url = "/kouka";
//		  response.sendRedirect(url);
		request.getRequestDispatcher("/manage/student_manage.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try{
			//		post送信のyearを取得
				int year = Integer.parseInt(request.getParameter("year"));

				//		入学年度は設定されているかチェック
				if(year == 0){
					  String url = "/kouka/manage/list";
					  response.sendRedirect(url);
					System.out.println("yearを設定していません。");
				}
				//	StudentDAOでselectメソッドで指定年度の学生リストを取得
				StudentDAO dao=new StudentDAO();
				List<Student> list =dao.selectAll(year);

				//ここでのlistには確実にデータが入っている。。。

				//	データがない場合はトップ画面へリダイレクト
				if(list == null) {
					  String url = "/kouka";
					  response.sendRedirect(url);
					System.out.println("リストがありません。");
				}

				//学生リストをsetAttributeでJSPに渡す
				request.setCharacterEncoding("UTF-8");
				  request.setAttribute("list", list);
				  request.getRequestDispatcher("/manage/student_list.jsp")
					.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}

}
