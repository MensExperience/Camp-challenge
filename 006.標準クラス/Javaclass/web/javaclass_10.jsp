<%--
    Document   : javaclass_10
    Created on : 2016/09/02, 14:51:32
    Author     : uezuchiharu
--%>

<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Currency"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //Javaの基本クラス　基礎課題    
        //１０．紹介していないJAVAの標準クラスを利用して、処理を作成してください。
        //講義では紹介されていないJAVAの標準クラスはたくさん存在します。
        //１つJAVAの標準クラスを選び、実際にロジックを作成してみてください。
        //また、この処理を作成するに当たり、下記を必ず実装してください
        //①処理の経過を書き込むログファイルを作成する。
        //②処理の開始、終了のタイミングで、ログファイルに開始・終了の書き込みを行う。
        //③書き込む内容は、「日時　状況（開始・終了）」の形式で書き込む。
        //④最後に、ログファイルを読み込み、その内容を表示してください。 
        %>
        
        <%
            //ファイルを指定
            File log = new File("log.txt");
            
            //ファイルをオープン
            FileWriter fw = new FileWriter(log);
            
            //まとめて書き込む
            BufferedWriter bw = new BufferedWriter(fw);
            
            //改行
            String b = ("<br>");
            
            //ここから処理開始            
            //日時取得
            Date startDate = new Date();
            bw.write(startDate + b);
            bw.write("処理を開始します" + b + b);

            //java.util.Currencyについて            
            bw.write("java.util.Currencyについて" + b + b);
            bw.write("getSymbol→通貨記号" + b);
            bw.write("getCurrencyCode→通貨コード" + b);
            bw.write("getDefaultFractionDigits→指定した通貨のデフォルトの小数点の桁数" + b + b);
            
            //日本
            Currency current1 = Currency.getInstance(Locale.JAPAN);
            bw.write("日本：" + current1.getSymbol() + b);
            bw.write(current1.getCurrencyCode() + b);
            bw.write(current1.getDefaultFractionDigits() + b + b);
   
            //アメリカ
            Currency current2 = Currency.getInstance(Locale.US);
            bw.write("アメリカ：" + current2.getSymbol() + b);
            bw.write(current2.getCurrencyCode() + b);
            bw.write(current2.getDefaultFractionDigits() + b + b);

            //フランス
            Currency current3 = Currency.getInstance(Locale.FRANCE);
            bw.write("フランス：" + current3.getSymbol() + b);
            bw.write(current3.getCurrencyCode() + b);
            bw.write(current3.getDefaultFractionDigits() + b + b);
            
            //中国
            Currency current4 = Currency.getInstance(Locale.CHINA);
            bw.write("中国：" + current4.getSymbol() + b);
            bw.write(current4.getCurrencyCode() + b);
            bw.write(current4.getDefaultFractionDigits() + b + b);
            
            //台湾
            Currency current5 = Currency.getInstance(Locale.TAIWAN);
            bw.write("台湾：" + current5.getSymbol() + b);
            bw.write(current5.getCurrencyCode() + b);
            bw.write(current5.getDefaultFractionDigits() + b + b);
            
            //終了日時を取得
            Date finalDate = new Date();
            bw.write(finalDate  + b);
            bw.write("処理を終了します");
            
            bw.close();
                
            //ファイルを読み込む
            FileReader fr = new FileReader(log);
            
            //バッファリング
            BufferedReader br = new BufferedReader(fr);
            
            //まとめて読み込む
            String str;
            while((str = br.readLine()) != null){
                out.print(str);
            }

            //ファイルクローズ
            br.close();
        %>
    </body>
</html>
