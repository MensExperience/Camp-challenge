<%-- 
    Document   : database_08_form
    Created on : 2016/09/07, 16:58:05
    Author     : uezuchiharu
    JAVAからのDBアクセス
    課題8:検索用のフォームを用意し、名前の部分一致で検索＆表示する処理を構築してください。
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>        
            <form method = "post" action = "database_08">
                <p>
                    検索する文字：<input type = "text" name = "key">
                </p>
                <input type = submit value="送信"> 
            </form>
    </body>
</html>
