<%-- 
    Document   : javaclass7
    Created on : 2016/08/31, 18:15:40
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
        <%
        //Javaの基本クラス　基礎課題
        //７．以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、結果を表示してください。
        //「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」
        
        String sentence = "「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」";
        
        //文字列置換
        sentence = sentence.replace("I","い");
        sentence = sentence.replace("U","う");
        
        out.println("「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」→ <br>"
                + sentence);

        %>        
    </body>
</html>