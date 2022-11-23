<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
        <h1 class=""><a href="/kouka">成績一覧</a></h1>
    </div>

    <div class="c-container--table">
        <table class="table table-striped">
            <tr>
                <th>入学年度</th>
                <th>クラス</th>
                <th>氏名</th>
                <th>点数</th>
            </tr>
            <tr>
                <td>2021</td>
                <td>情報IT2年生</td>
                <td>萱野峻平</td>
                <td class="p-score"><input class="p-score__input" type="text" class="form-control" value="100"></td>
            </tr>
            <tr>
                <td>2021</td>
                <td>情報IT2年生</td>
                <td>佐藤圭太</td>
                <td class="p-score"><input class="p-score__input" type="text" class="form-control" value="65"></td>
            </tr>
        </table>
    </div>

    <div class="c-flex-container">
        <!-- 戻るボタン -->
        <div class="p-back-btn">
            <a href="score_search.jsp"><button type="button" class="c-btn c-btn--back">戻る</button></a>
        </div>
        <!-- 更新ボタン -->
        <div class="p-register-btn">
            <a href="score_comp.jsp"><button type="button" class="c-btn c-btn--register">更新</button></a>
        </div>
    </div>
<%@include file="../footer.html" %>