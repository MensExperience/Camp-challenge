<%--
    Document   : datasousa5_form
    Created on : 2016/09/01, 15:43:10
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //セッション取得
    HttpSession hs = request.getSession(true);
    //性別を入れるストリング変数を用意
    String gen ="";
    //変数に格納
    if(hs.getAttribute("lastGender") != null) {gen = (String)hs.getAttribute("lastGender");}
    
%>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--
        JAVAのデータ操作　基礎課題
        5．以下の機能を実装してください。
        名前・性別・趣味を入力するページを作成してください。
        また、入力された名前・性別・趣味を記憶し、次にアクセスした際に記録されたデータを初期値として表示してください。
        ※Javaと同時に、HTMLの知識が必要になります。
        ※入力フィールドの使い方を調べてみましょう。
        -->             
        
        <!-- 送信フォーム -->
        <form action="/DataSousa/datasousa5" method="post">
            名前：<input type = "text" name = "textName" value = "<%= hs.getAttribute("lastName") %>"><br><br>
            性別：<br>
            男性<input type ="radio" name="rdoGender" value="男" <% if(gen.equals("男")){%>checked<%}%>><br>
            女性<input type ="radio" name="rdoGender" value="女" <% if(gen.equals("女")){%>checked<%}%>><br><br>
            趣味：<br>
            <textarea name = "textareaHobby" rows="4" cols="40"><%= hs.getAttribute("lastText") %></textarea><br><br>
            <input type="submit" value="送信">       
        </form>           
    </body>
</html>
