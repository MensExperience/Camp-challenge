<%-- 
    Document   : database_13_getList
    Created on : 2016/09/08, 23:42:08
    Author     : uezuchiharu

    商品一覧の取得画面
    ・商品検索フォーム
    ・ユーザー　ユーザートップページへの遷移
    ・非ユーザー　ホーム画面への遷移
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMIC LIST / SEARCH</title>
    </head>
    <body>
        <h1>コミックリスト一覧ページ</h1>
        <br>
        <a href ="database_13_allget">コミックリストを全て見る</a>
        <br>
        <br>
        <p>キーワードから商品を検索する</p>
        <form method="post" action="database_13_getList">            
            タイトル：<input type="text" name="title"><br>
            作者：<input type="text" name="author"><br>
                <input type="submit" value="検索">              
        </form>
        <br>
        <br>
        <a href="database_13_home.jsp">戻る</a>
    </body>
</html>
