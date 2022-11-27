<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
        <h1><a href="/kouka">登録内容確認</a></h1>
    </div>

    <div class="c-container--table">
        <p class="c-confirm-title">この内容でよろしいでしょうか？</p>
        <table class="table table-striped">
            <tr>
                <td>入学年度</td>
                <td><%= request.getParameter("year") %></td>
            </tr>
            <tr>
                <td>学生氏名</td>
                <td><%= request.getParameter("name") %></td>
            </tr>
        </table>
    </div>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <div class="p-back-btn">
            <a href="/kouka/register"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 登録ボタン -->
        <form action="/kouka/register" method="post">
        	<input type="hidden" value="<%= request.getParameter("year") %>" name="year">
        	<input type="hidden" value="<%= request.getParameter("name") %>" name="name">
	        <div class="p-register-btn">
	            <button type="submit" class="c-btn c-btn--register">登録</button>
	        </div>
        </form>
    </div>

<%@include file="../footer.html" %>