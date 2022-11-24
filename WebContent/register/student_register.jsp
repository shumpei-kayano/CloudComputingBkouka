<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%!  Date today = new Date(); %>
<% int year = today.getYear() + 1900; %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">学生登録</a></h1>
    </div>

    <form action="/kouka/register/confirm" method="post">
        <div class="c-container c-container--tate">
            <!-- 入学年度セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example" name="year" required>
                <option selected value="">入学年度を選択してください</option>
                <%
                /*   今現在の年度から４年分をループ させる*/
                for(int i = year-3 ; i <= year; i++){
                	out.println( "<option value=\""+ i +"\">"+ i +"</option>");
                }
                %>
            </select>
            <!-- クラスセレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example" name="class" required>
                <option selected>クラスを選択してください</option>
                <option value="情報IT１年生">情報IT１年生</option>
                <option value="情報IT２年生">情報IT２年生</option>
                </select>
            <!-- 学生氏名フォーム -->
            <div class="input-group flex-nowrap mb-5 p-student-form">
                <span class="input-group-text" id="addon-wrapping">学生氏名</span>
                <input type="text" class="form-control" placeholder="大原 太郎" aria-label="Username"
                    aria-describedby="addon-wrapping" name="name" required>
            </div>
        </div>

	    <div class="c-flex-container">
	        <!-- 戻るボタン -->
	        <div class="p-back-btn">
	            <a href="/kouka"><button type="button" class="c-btn c-btn--back">戻る</button></a>
	        </div>
	        <!-- 確認ボタン -->
	        <div class="p-register-btn">
	            <button type="submit" class="c-btn c-btn--register">確認</button>
	        </div>
	    </div>
  	</form>
<%@include file="../footer.html" %>