<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="bean.Student" %>
<%@page import="dao.StudentDAO" %>
<%@ page import="java.util.List" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">成績一覧</a></h1>
    </div>
	<p style="text-align:center;font-size:1.5em;color:red;">成績入力がない場合は0点で表示されます。</p>
    <div class="c-container--table">
        <table class="table table-striped">
            <tr>
                <th>入学年度</th>
                <th>回数</th>
                <th>氏名</th>
                <th>理科</th>
                <th>国語</th>
                <th>英語</th>
                <th>社会</th>
                <th>数学</th>
            </tr>
   <%
            /* サーブレットからgetAttributeで学生リストを受け取る */
            List<Student> list = (List<Student>)request.getAttribute("list");%>
           <% for(Student s: list) { %>
            <tr>
                <td><%=s.getYear() %></td>
                <td>第<%=s.getScore().getTimes() %>回</td>
                <td><%=s.getName() %></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getRika() %>" min="0" max="100"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getKokugo() %>" min="0" max="100"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getEigo() %>" min="0" max="100"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getSyakai() %>" min="0" max="100"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getSugaku() %>" min="0" max="100"></td>
            </tr>
             <%  } %>
        </table>
    </div>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <div class="p-back-btn">
            <a href="/kouka/score"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 更新ボタン -->
        <div class="p-register-btn">
            <a href="score_comp.jsp"><button type="button" class="c-btn c-btn--register">更新</button></a>
        </div>
    </div>
<%@include file="../footer.html" %>