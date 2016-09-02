<%-- 
    Document   : datasousa2
    Created on : 2016/09/01, 13:00:11
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
        //JAVAのデータ操作　基礎課題    
        //２．以下の機能を実装してください。
        //１で作成したHTMLの入力データを取得し、画面に表示する
        
        request.setCharacterEncoding("UTF-8");
        
        //値を受け取る
        String name = request.getParameter("textName");
        String gender = request.getParameter("rdoGender");
        String hobby = request.getParameter("txtareaHobby");

        //表示
        out.println("名前：" + name + "<br>" + "性別：" + gender + "<br>" + "趣味：" + hobby);
        
        
        %>
    </body>
</html>
