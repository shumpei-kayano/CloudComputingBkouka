<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
         <h1 class=""><a href="/kouka">登録内容確認</a></h1>
    </div>

    <div class="c-container--table">
        <p class="c-confirm-title">この内容でよろしいでしょうか？</p>
        <table class="table table-striped">
            <tr>
                <td>入学年度</td>
                <td>2021</td>
            </tr>
            <tr>
                <td>クラス</td>
                <td>情報IT１年生</td>
            </tr>
            <tr>
                <td>学生氏名</td>
                <td>萱野峻平</td>
            </tr>
        </table>
    </div>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <div class="p-back-btn">
            <a href="../register/student_register.jsp"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 登録ボタン -->
        <div class="p-register-btn">
            <a href="../register/student_comp.jsp"><button type="button" class="c-btn c-btn--register">登録</button></a>
        </div>
    </div>

<%@include file="../footer.html" %>