<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%!  Date today = new Date(); %>
<%
/* @SuppressWarningsアノテーションで非推奨のメンバー利用の警告をなくす */
@SuppressWarnings("deprecation")
int year = today.getYear() + 1900; %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">成績管理</a></h1>
    </div>

    <form action="/kouka/score/list" method="post">
        <div class="c-container c-container--tate">
            <!-- 入学年度セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example" name="year" required>
                <option value="" selected>入学年度を選択してください</option>
                <%
                /*   今現在の年度から４年分をループ させる*/
                for(int i = year-3 ; i <= year; i++){
                	out.println( "<option value=\""+ i +"\">"+ i +"</option>");
                }
                %>
            </select>
            <!-- 回数セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example" name="times" required>
                <option value="" selected>回数を選択してください</option>
                <option value="1">第1回</option>
                <option value="2">第2回</option>
            </select>
        </div>

		    <div class="c-flex-container">
		        <!-- 戻るボタン -->
		        <div class="p-back-btn">
		            <a href="/kouka"><button type="button" class="c-btn c-btn--back">戻る</button></a>
		        </div>
		        <!-- 検索ボタン -->
		        <div class="p-register-btn">
		            <button type="submit" class="c-btn c-btn--register">検索</button>
		        </div>
		    </div>
     </form>
<%@include file="../footer.html" %>