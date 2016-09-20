<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO"
        import="javax.servlet.http.HttpSession" %>

<%
    //　＜追記＞　セッション開始
    HttpSession hs = request.getSession();  
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)hs.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報詳細画面</title>
    </head>
    <body>
        <h1>詳細情報</h1>
        名前:<%= udd.getName()%><br>
        生年月日:<%= udd.getBirthday()%><br>    
        <%--　＜修正＞　種別を名目で表示する　種別:<%= udd.getType()%>　--%>     
        種別:<%= jh.exTypenum(udd.getType())%><br>
        電話番号:<%= udd.getTell()%><br>
        自己紹介:<%= udd.getComment()%><br>
        登録日時:<%= udd.getNewDate()%><br>
        <form action="Update" method="POST">
            <%--　＜追記＞　アクセスチェック　--%>
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">            
        <input type="submit" name="update" value="変更" style="width:100px">
        </form>
            
        <form action="Delete" method="POST">
            <%--　＜追記＞　アクセスチェック　--%>
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">            
        <input type="submit" name="Delete" value="削除" style="width:100px">
        </form>
    </body>
</html>
