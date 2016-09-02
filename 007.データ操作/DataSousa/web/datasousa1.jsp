<%-- 
    Document   : datasousa1
    Created on : 2016/09/01, 13:00:03
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--
        JAVAのデータ操作　基礎課題
        １．以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください
        ・名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
        -->
        
        <form action ="datasousa2.jsp" method ="post">
            名前:<input type ="text" name="textName"><br><br>
            性別:<br>
            男性<input type ="radio" name="rdoGender" value="男性"><br>
            女性<input type ="radio" name="rdoGender" value="女性"><br><br>
            趣味:<br>
            <textarea name ="txtareaHobby"></textarea><br><br>
            <input type ="submit" value="送信">            
        </form>
    
    </body>
</html>
