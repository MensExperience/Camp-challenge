<%-- 
    Document   : database_10_form
    Created on : 2016/09/08, 13:26:07
    Author     : uezuchiharu
    JAVAからのDBアクセス
    課題10:profileIDで指定したレコードを削除できるフォームを作成してください
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method ="post" action="database_10">
            <p>削除するuserIDを入力してください<br>
                <input type="number" name="userID">
                <input type="submit" value="送信">              
            </p>            
        </form>
    </body>
</html>
