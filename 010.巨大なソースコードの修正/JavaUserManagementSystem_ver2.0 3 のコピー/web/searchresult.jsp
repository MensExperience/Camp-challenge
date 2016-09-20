<%@page import="java.util.ArrayList"%>
<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance(); 
    //　＜修正＞　ArrayListで受け取る　UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
    ArrayList <UserDataDTO> list = (ArrayList <UserDataDTO>)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <table border=1>
<% if(list.size() != 0){ %>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            <tr>
                <%--　＜修正＞　ArrayListの要素数分を表示する　--%>
                <% for(int i = 0; i < list.size(); i++){
                    UserDataDTO udd = list.get(i); %>
                
                <td><a href="ResultDetail?id=<%= udd.getUserID() %>"><%= udd.getName() %></a></td>
                <td><%= udd.getBirthday()%></td>
                
                <%--　＜修正＞　種別を名目で表示させる　<td><%= udd.getType()%></td>　--%>               
                <td><%= jh.exTypenum(udd.getType())%></td>
                <td><%= udd.getNewDate()%></td>
            </tr>
                <% } %>
                <% } %>
        </table>
    </body>
    <%=jh.home()%>
</html>
