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
   <form action="/kouka/score/register" method="post">
    <div class="c-container--table">
        <table class="table table-striped">
           <%
            /* サーブレットからgetAttributeで成績リストを受け取る */
            /* @SuppressWarningsアノテーションでジェネリックスによる型変換の警告をなくす */
			@SuppressWarnings("unchecked")
            List<Student> list = (List<Student>)request.getAttribute("list");
   			count = list.size();
            %>

            <%
            /* すみません。本来ならばテストテーブルと成績テーブルを作成しての実装にすべきですが*/
           /* ５科目で２年間分の成績と思っておりました。１０科目とのことでハリボテ実装しました。。。*/
            if(list.get(0).getScore().getTimes() == 1){
            %>
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
            <% } else {%>
                        <tr>
                <th>入学年度</th>
                <th>回数</th>
                <th>氏名</th>
                <th>物理</th>
                <th>化学</th>
                <th>生物</th>
                <th>古文</th>
                <th>世界史</th>
            </tr>
            <% } %>
            <%! int count; %>
			<%! int i=1; %>
           <% for(Student s: list) {%>
            <tr>
                <td><%=s.getYear() %></td>
                <td>第<%=s.getScore().getTimes() %>回</td>
                <td><%=s.getName() %></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getRika() %>" min="0" max="100" name="rika<%=i%>"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getKokugo() %>" min="0" max="100" name="kokugo<%=i%>"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getEigo() %>" min="0" max="100"  name="eigo<%=i%>"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getSyakai() %>" min="0" max="100"  name="syakai<%=i%>"></td>
                <td class="p-score"><input class="p-score__input" type="number" class="form-control" value="<%=s.getScore().getSugaku() %>" min="0" max="100"  name="sugaku<%=i%>"></td>
            </tr>
             <%  i ++;  } %>
        </table>
    </div>

    <div class="c-flex-container" style="margin-bottom:100px">
        <!-- 戻るボタン -->
        <div class="p-back-btn">

            <a href="/kouka/score"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 更新ボタン -->
        <div class="p-register-btn">
        	<%! int j =1; %>
        	<% for(Student s: list) {%>
        		<input type="hidden" value="<%= s.getScore().getId() %>" name="id<%=j%>">
        	<%  j ++;  } %>
        	<input type="hidden" value="<%=count %>" name="count">
            <button type="submit" class="c-btn c-btn--register">更新</button>
        </div>
    </div>
 </form>
<%@include file="../footer.html" %>