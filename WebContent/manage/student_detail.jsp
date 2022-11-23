<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">学生詳細 </a></h1>
    </div>

    <form action="" method="post">
        <div class="c-container c-container--tate">
            <!-- 入学年度セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>入学年度を選択してください</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021" selected>2021</option>
                <option value="2022">2022</option>
            </select>
            <!-- クラスセレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>クラスを選択してください</option>
                <option value="1-1">情報IT１年生</option>
                <option value="2-1" selected>情報IT２年生</option>
                </select>
            <!-- 学生氏名フォーム -->
            <div class="input-group flex-nowrap mb-5 p-student-form">
                <span class="input-group-text" id="addon-wrapping">学生氏名</span>
                <input type="text" class="form-control" placeholder="大原 太郎" aria-label="Username"
                    aria-describedby="addon-wrapping" value="萱野峻平">
            </div>
        </div>
    </form>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <div class="p-back-btn">
            <a href="student_list.jsp"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 削除ボタン -->
        <div class="p-back-btn">
            <a href="student_delete.jsp"><button type="button" class="c-btn c-btn--back">削除</button></a>
        </div>
        <!-- 確認ボタン -->
        <div class="p-register-btn">
            <a href="student_confirm.jsp"><button type="button" class="c-btn c-btn--register">確認</button></a>
        </div>
    </div>
<%@include file="../footer.html" %>