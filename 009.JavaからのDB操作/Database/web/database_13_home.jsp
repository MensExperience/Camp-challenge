<%-- 
    Document   : databese_13_form
    Created on : 2016/09/08, 18:25:35
    Author     : uezuchiharu

    JAVAからのDBアクセス

    以下の機能を満たすロジックを作成してください。
    在庫管理システムを作成します。
    まず、DBにユーザー情報管理テーブルと、商品情報登録テーブルを作成してください。
    その上で、下記機能を実現してください。
    
    ①ユーザーのログイン・ログアウト機能
    ②商品情報登録機能
    ③商品一覧機能
    
    ※各テーブルの構成は各自の想像で作ってみてください
  
    ホーム画面
    ・ログイン画面への遷移
    ・商品一覧を検索するページへの遷移
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMIC LIST / HOME</title>            
    </head>
    <body>
        <h1>COMIC LIST</h1>
        <br>
        <a href ="database_13_login.jsp">ログイン</a><br>
        <a href ="database_13_get.jsp">商品一覧を見る</a>
    </body>
</html>