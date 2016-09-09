<%-- 
    Document   : database_12_form
    Created on : 2016/09/08, 15:23:50
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
        <form method="post" action="database_12">
            <p>
                検索するデータを入力してください<br><br>
                userID：<input type="number" name="id"><br>
                名前：<input type="text" name="name"><br>
                年齢：<input type="number" name="age"><br>
                誕生日：
                <select name="year">
                    <%for(int m = 1900; m <= 2020; m++){
                        out.print("<option value=\"" + m + "\">" + m + "</option>");
                    }    
                    %>                    
                </select>
                
                <select name="month">
                    <%for(int m = 1; m <= 12; m++){
                        out.print("<option value=\"" + m + "\">" + m + "</option>");
                    }    
                    %>
                </select>
                
                 <select name="day">
                    <%for(int d = 1; d <= 31; d++){
                        out.print("<option value=\"" + d + "\">" + d + "</option>");
                    }    
                    %>
                 </select><br>
                 <%-- AND検索：<input type ="radio" name="search" value="1"><br>
                OR検索：<input type ="radio" name="search" value="2"><br><br> --%>
                <input type="submit" value="送信">
            </p>        
        </form>
    </body>
</html>
