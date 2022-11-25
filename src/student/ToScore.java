package student;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class ToScore
 */
@WebServlet("/score")
public class ToScore extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToScore() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		----------------成績表データ生成処理----------------
//		int j = 91;
//for(int i=211;i<=240;i++){
//	Random rand = new Random();
//	int num1 = rand.nextInt(100);
//	int num2 = rand.nextInt(100);
//	int num3 = rand.nextInt(100);
//	int num4 = rand.nextInt(100);
//	int num5 = rand.nextInt(100);
//	int num1 = 0;
//	int num2 =0;
//	int num3 =0;
//	int num4 = 0;
//	int num5 = 0;
//	System.out.println("insert into score values("+i+","+ j+",1,"+ num1+"," +num2+","+ num3+","+ num4+","+ num5+");");
//	j++;
//}

		request.getRequestDispatcher("/score/score_search.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
