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
import dao.ScoreDAO;

/**
 * Servlet implementation class ToScoreList
 */
@WebServlet("/score/list")
public class ToScoreList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToScoreList() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		//		PrintWriterよりも前にutf変換しないと？に文字化けする
		PrintWriter out=response.getWriter();
		try{
			//		post送信のyearとtimesを取得
				int year = Integer.parseInt(request.getParameter("year"));
				int times = Integer.parseInt(request.getParameter("times"));

				//	ScoreDAOのscoreSelectメソッドで学生成績一覧を取得
				ScoreDAO dao=new ScoreDAO();
				List<Student> list =dao.scoreSelect(year,times);

				//学生成績リストをsetAttributeでJSPに渡す
				  request.setAttribute("list", list);
				  request.getRequestDispatcher("/score/score_list.jsp")
					.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}
}

