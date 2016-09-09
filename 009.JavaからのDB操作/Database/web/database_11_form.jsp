<%-- 
    Document   : database_11_form
    Created on : 2016/09/08, 14:11:41
    Author     : uezuchiharu
    JAVAからのDBアクセス
    課題11:profileIDで指定したレコードの、profileID以外の要素をすべて上書きできるフォームを作成してください
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method ="post" action="database_11">
            <p>更新したいuserIDを入力してください<br>
                <input type="number" name=id><br><br>
                更新する情報を入力してください<br>
                名前：<input type="text" name="name"><br>
                年齢：<input type="number" name="age"><br>
                誕生日；
                <select name="year">
                        <%
                            for (int y = 1990; y <= 2020; y++) {
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
