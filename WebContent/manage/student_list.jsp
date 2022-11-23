<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="bean.Student" %>
<%@page import="dao.StudentDAO" %>
<%@ page import="java.util.List" %>
<%@include file="../header.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>

    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">学生一覧</a></h1>
    </div>

    <div class="c-container--table" style="width:1000px">
        <table class="table table-striped">
            <tr>
                <th width="30%">入学年度</th>
                <th width="50%">氏名</th>
                <th width="20%"></th>
            </tr>
            <%
            /* サーブレットからgetAttributeで学生リストを受け取る */
            List<Student> list = (List<Student>)request.getAttribute("list");%>
           <% for(Student s: list) { %>

	            <tr>
	                <td><%=s.getYear() %></td>
	                <td><%=s.getName() %></td>
	                <td><a href="student_detail.jsp?id=<%= s.getId() %>"><button type="button" class="btn btn-primary">詳細</button></a></td>
	            </tr>

          <%  } %>
        </table>
    </div>

    <!-- 戻るボタン -->
    <div class="p-back-btn">
        <a href="student_manage.jsp"><button type="button" class="c-btn c-btn--back">戻る</button></a>
    </div>
<%@include file="../footer.html" %>