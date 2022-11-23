<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%!  Date today = new Date(); %>
<% int year = today.getYear() + 1900; %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">学生照会</a></h1>
    </div>

    <form action="/kouka/manage/list" method="post">
        <div class="c-container c-container--tate">
            <!-- 入学年度セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example" name="year" required>
                <option selected value=0>入学年度を選択してください</option>
                <%
                /*   今現在の年度から４年分をループ させる*/
                for(int i = year-3 ; i <= year; i++){
                	out.println( "<option value=\""+ i +"\">"+ i +"</option>");
                }
                %>
            </select>
            <!-- クラスセレクトボックス -->
<!--             <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>クラスを選択してください</option>
                <option value="1-1">情報IT１年生</option>
                <option value="2-1">情報IT２年生</option>
                </select> -->
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