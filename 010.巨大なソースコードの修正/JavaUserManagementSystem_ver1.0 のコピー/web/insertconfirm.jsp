<%-- JumsHelper,UserDataBeansクラスをインポートする --%>
<%@page import="jums.JumsHelper"%> 
<%@page import="jums.UserDataBeans" %>
<%@page import="javax.servlet.http.HttpSession" %>

<%
    //セッション開始
    HttpSession hs = request.getSession();
    //セッションの中の"udb"を取り出す
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% if(!udb.getName().equals("") && udb.getYear() != null &&
           udb.getMonth() != null && udb.getDay() != null &&
           udb.getType() != null && !udb.getTell().equals("") &&
           !udb.getComment().equals("")){ %>
        <h1>登録確認</h1>
        名前:<%= udb.getName() %><br>
        生年月日:<%= udb.getYear() + "年" + udb.getMonth() + "月" + udb.getDay() + "日" %><br>
        種別:<%= udb.getType() %><br>
        電話番号:<%= udb.getTell() %><br>
        自己紹介:<%= udb.getComment() %><br>
        上記の内容で登録します。よろしいですか？
        
        <form action="insertresult" method="POST">
            <%-- 直リンク防止のためのパラメーターをhiddenで送る　--%>
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
            
    <%  //nullの時　それぞれのエラーを出す
        } else{
            if (udb.getName().equals("")){
                out.print("名前が入力されていません");
            }
            if (udb.getYear().equals("")){
                out.print("年が選択されていません");
            }
            if (udb.getMonth().equals("")){
                out.print("月が選択されていません");
            }
            if (udb.getDay().equals("")){
            out.print("日付が選択されていません");
            }
            if (udb.getType().equals("")){
                out.print("種別が選択されていません");
            }
            if (udb.getTell().equals("")){
                out.print("電話番号が入力されていません");
            }
            if (udb.getComment().equals("")){
                out.print("コメントが入力されていません");
            }    
        } 
    %>
        <form action="insert" method="POST"> 
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <br>
    <%--　トップページへのリンク　--%>
    <%= JumsHelper.getInstance().home() %>
    </body>
</html>
