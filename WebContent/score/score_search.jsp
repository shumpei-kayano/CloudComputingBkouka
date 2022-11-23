<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">成績管理</a></h1>
    </div>

    <form action="" method="post">
        <div class="c-container c-container--tate">
            <!-- 入学年度セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>入学年度を選択してください</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
            </select>
            <!-- クラスセレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>クラスを選択してください</option>
                <option value="1-1">情報IT１年生</option>
                <option value="2-1">情報IT２年生</option>
            </select>
            <!-- 科目セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>科目を選択してください</option>
                <option value="rika">理科</option>
                <option value="kokugo">国語</option>
                <option value="eigo">英語</option>
                <option value="shakai">社会</option>
                <option value="sugaku">数学</option>
            </select>
            <!-- 回数セレクトボックス -->
            <select class="form-select form-select-lg mb-5" aria-label="Default select example">
                <option selected>回数を選択してください</option>
                <option value="1">第1回</option>
                <option value="2">第2回</option>
            </select>
        </div>
    </form>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <div class="p-back-btn">
            <a href="../top.jsp"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 検索ボタン -->
        <div class="p-register-btn">
            <a href="score_list.jsp"><button type="button" class="c-btn c-btn--register">検索</button></a>
        </div>
    </div>
<%@include file="../footer.html" %>