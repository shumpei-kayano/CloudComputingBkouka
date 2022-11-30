<%@page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@include file="../header.jsp" %>
    <!-- 削除の確認コンソール -->
    <script>
    function beforeSubmit() {
        if(window.confirm('本当に削除してもよろしいでしょうか？')) {
          return true;
        } else {
          return false;
        }
      }
</script>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">学生詳細 </a></h1>
    </div>

			<!-- jspのアクションタグでbeanの取得 -->
           <jsp:useBean id="s"  class="bean.Student" scope="request"/>

    <form action="/kouka/manage/confirm" method="post">
        <div class="c-container c-container--tate">
            <!-- 入学年度セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example" name="year" required>
                <option selected value="">入学年度を選択してください</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
            </select>
            <!-- 学生氏名フォーム -->
            <div class="input-group flex-nowrap mb-5 p-student-form">
                <span class="input-group-text" id="addon-wrapping">学生氏名</span>
                <input type="text" class="form-control" placeholder="大原 太郎" aria-label="Username"
                    aria-describedby="addon-wrapping" value="<jsp:getProperty name="s" property="name" />" name="name">
            </div>
            <input type="hidden" value="<jsp:getProperty name="s" property="id" />" name="id">
            <!-- 確認ボタン -->
	        <div class="p-register-btn" style="text-align:right;margin-right:0">
	            <button type="submit" class="c-btn c-btn--register">確認</button>
	        </div>
        </div>
    </form>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <form action="/kouka/manage/list" method="post">
	        <div class="p-back-btn">
	        	<input type="hidden" value="<jsp:getProperty name="s" property="year" />" name="year">
				<button type="submit" class="c-btn c-btn--back">戻る</button>
	        </div>
        </form>
        <!-- 削除ボタン -->
        <form action="/kouka/manage/del" method="post" onsubmit="return beforeSubmit()">
	        <div class="p-back-btn" style="margin-right:318px">
		        <input type="hidden" value="<jsp:getProperty name="s" property="id" />" name="id">
		        <input type="hidden" value="<jsp:getProperty name="s" property="year" />" name="year">
	            <button type="submit" class="c-btn c-btn--back">削除</button>
	        </div>
        </form>

    </div>

<%@include file="../footer.html" %>