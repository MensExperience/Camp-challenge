<%-- 
    Document   : javaclass9
    Created on : 2016/09/02, 14:21:33
    Author     : uezuchiharu
--%>

<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%        
        //９．ファイルから自己紹介を読み出し、表示してください。

        //ファイルオーブン
        File text = new File("text.txt");
        
        //読み込みモードでオブジェクト生成
        FileReader fr = new FileReader(text);
        
        //読み込み用にバッファリングする
        BufferedReader br = new BufferedReader(fr);
        
        //まとめて読み込む
        String str;
        while((str = br.readLine()) != null){
            out.print(str + "<br>");
        }

        //ファイルクローズ
        br.close();

        %>
    </body>
</html>
