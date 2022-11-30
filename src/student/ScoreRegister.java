package student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Score;
import dao.ScoreDAO;

/**
 * Servlet implementation class ScoreRegister
 */
@WebServlet("/score/register")
public class ScoreRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScoreRegister() {
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
		try {
			//成績リストの要素数を取得
			int count = Integer.parseInt(request.getParameter("count"));
			//	成績データの取得と登録処理
			for(int i = 1; i<=count; i++){
				String a = "id" + i;
				if(request.getParameter(a) == null) {
					  String url = "/kouka/error";
					  response.sendRedirect(url);
				}
				int id = Integer.parseInt(request.getParameter("id"+i));
				int rika = Integer.parseInt(request.getParameter("rika"+i));
				int kokugo = Integer.parseInt(request.getParameter("kokugo"+i));
				int eigo = Integer.parseInt(request.getParameter("eigo"+i));
				int syakai = Integer.parseInt(request.getParameter("syakai"+i));
				int sugaku =Integer.parseInt(request.getParameter("sugaku"+i));

				Score sc = new Score();
				sc.setId(id);
				sc.setRika(rika);
				sc.setKokugo(kokugo);
				sc.setEigo(eigo);
				sc.setSyakai(syakai);
				sc.setSugaku(sugaku);
				ScoreDAO dao=new ScoreDAO();
				dao.scoreUpdate(sc);
			}
			request.getRequestDispatcher("/score/score_comp.jsp")
			.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}

}
