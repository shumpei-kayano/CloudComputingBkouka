<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%int year =  (int)request.getAttribute("year"); %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">削除完了</a></h1>
    </div>
    <div class="c-container--table">
        <h1 class="c-register-title">削除が完了しました</h1>
    </div>

    <!-- 戻るボタン -->
        <form action="/kouka/manage/list" method="post">
	        <div class="p-back-btn">
	        	<input type="hidden" value="<%= year %>" name="year">
				<button type="submit" class="c-btn c-btn--back">戻る</button>
	        </div>
        </form>
<%@include file="../footer.html" %>