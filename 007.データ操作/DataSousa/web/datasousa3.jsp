<%-- 
    Document   : datasousa3
    Created on : 2016/09/01, 13:36:54
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //JAVAのデータ操作　基礎課題
        //３．クッキーに現在時刻を記録し、次にアクセスした際に、前回記録した日時を表示してください。
        
        //１回目の訪問
        Date time = new Date();
        Cookie c = new Cookie("lastLogin",time.toString());
        response.addCookie(c);
        
        //次の訪問
        Cookie cList[] = request.getCookies();
        if(cList != null){
            for(int i = 0; i < cList.length; i++){
                if(cList[i].getName().equals("lastLogin")){
                    out.println("前回のログイン：" + cList[i].getValue());
                    break;
                }
            }
        }             
        %>
    </body>
</html>
