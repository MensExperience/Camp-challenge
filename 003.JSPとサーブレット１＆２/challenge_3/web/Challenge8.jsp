<%--
    Document   : Challenge8
    Created on : 2016/08/25, 22:42:32
    Author     : uezuchiharu
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
        <%!
    HashMap<String,String> list = new HashMap<>();
    String getProfiles(int num){
    
    String profile = "";
    
    if(num == 1){
        list.put("ID","1");
        list.put("名前","鈴木");
        list.put("誕生日","１月１日");
        list.put("住所","東京都");
        profile = (list.get("名前") + list.get("誕生日") + list.get("住所"));        
    }
    if(num == 2){
        list.put("ID","2");
        list.put("名前","佐藤");
        list.put("誕生日","２月２日");
        list.put("住所",null);
        profile = (list.get("名前") + list.get("誕生日") + list.get("住所"));
    }
    if(num == 3){
        list.put("ID","3");
        list.put("名前","田中");
        list.put("誕生日","３月３日");
        list.put("住所","千葉県");
        profile = (list.get("名前") + list.get("誕生日") + list.get("住所"));
    }
    return profile;
}
%>
    
<%  
//２回目でループを抜ける
    
    int limit =2;
    
    for(int x = 0; x <= 3; x++){
        if(x > limit){
            break;
        }
        String profile = getProfiles(x);
        out.print(profile + "<br>");
    }
%>
    </body>
</html>
