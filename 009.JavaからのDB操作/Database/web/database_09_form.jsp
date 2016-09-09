<%-- 
    Document   : database_09_form
    Created on : 2016/09/07, 20:29:50
    Author     : uezuchiharu
    JAVAからのDBアクセス
    課題9:フォームからデータを挿入できる処理を構築してください。
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ユーザー登録フォーム</h1>
        <form method = "post" action = "database_09">
                <p>
                    userID： <input type ="number" name="id"><br>
                    名前：&nbsp;&nbsp;&nbsp;  <input type = "text" name = "name"><br>
                    年齢：&nbsp;&nbsp;&nbsp;  <input type = "number" name = "age"><br>
                    誕生日：
                    <select name="year">
                        <%
                            for (int y = 1980; y <= 2020; y++) {
                                out.print("<option value=\"" + y + "\">" + y + "</option>");
                            }
                        %>
                    </select>
                    
                    <select name="month">
                        <%
                            for (int m = 1; m <= 12; m++){
                                out.print("<option value = \"" + m + "\">" + m + "</option>");                      }
                        %>
                    </select>
                        
                    <select name="day">
                        <%
                            for(int d = 1; d <= 31; d++){ 
                                out.print("<option value = \"" + d + "\">" + d + "</option>");
                            }
                        %>
                    </select><br><br>
                    <input type ="submit" value="送信">                        
                </p>                                       
        </form>
    </body>
</html>
