<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="header.jsp" %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">学生管理システム</a></h1>
    </div>
    <div class="c-container c-container--yoko">
        <%-- 学生登録 --%>
        <div class="c-btn-container">
            <a href="/kouka/register"><button type="button"class="c-btn c-btn--bigger c-btn--student">学生登録</button></a>
        </div>
        <%-- 学生照会 --%>
        <div class="c-btn-container">
            <a href="/kouka/manage/list"><button type="button" class="c-btn c-btn--bigger c-btn--show">学生照会</button></a>
        </div>
        <%-- 成績照会 --%>
        <div class="c-btn-container c-block">
            <a href="score/score_search.jsp"><button type="button" class="c-btn c-btn--bigger c-btn--score">成績照会</button></a>
        </div>
    </div>
<%@include file="footer.html" %>