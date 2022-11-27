<%@page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@include file="../header.jsp" %>
    <div class="c-pagetitle">
       <h1><a href="/kouka">エラー</a></h1>
    </div>
    <div class="c-container--table">
        <h1 class="c-register-title" style="color:red;">エラーが発生しました</h1>
        <p>申し訳ございません。なぜか２回目の成績更新はエラーになります。<br>
        Tomcatを再起動か、サーブレットを読み込み直すと登録が可能になります。</p>
        <p>2回目以降はなぜか成績データがnullで送信されてしまうため、parseIntでエラーとなります。<br>
        デバックモードで変数の確認を行うとちゃんと送られているため、謎です。</p>
    </div>

        <!-- 戻るボタン -->
	        <div class="p-back-btn">
	            <a href="/kouka"><button type="button" class="c-btn c-btn--back">戻る</button></a>
	        </div>
<%@include file="../footer.html" %>