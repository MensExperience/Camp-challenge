/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package camp;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author uezuchiharu
 * 
 * JAVAからのDBアクセス
 * 課題2:前回の課題1で作成したテーブルに自由なメンバー情報を格納する処理を構築してください
 * 
 */

public class database_02 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //データベースへの接続を管理する変数
        Connection db_con = null;
        //情報をINSERTする変数
        PreparedStatement db_st = null;
        
        //dateの変数を用意
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","root","mezzo0322");
            
            //情報をINSERT
            db_st = db_con.prepareStatement("insert into user values(?, ?, ?, ?)");
            
            //値を入れる
            db_st.setInt(1, 1);
            db_st.setString(2, "斉藤　一");
            db_st.setInt(3, 22);
            db_st.setDate(4, new java.sql.Date(sdf1.parse("2000-02-20").getTime()));
            
            int i = db_st.executeUpdate();
            
            if(i != 0){
                out.print(i + "件、追加しました");
            }
            else{
                out.print("追加できませんでした");
            }
            
            db_st.close();
            db_con.close();            
        
        //エラーハンドリング
        } catch (SQLException e_sql) {
            out.println("接続時にエラーが発生しました:" + e_sql.toString());
        } catch (Exception e) {
            out.println("接続時にエラーが発生しました:" + e.toString());
        } finally {
            if (db_st != null){
                try {
                    db_st.close();
                } catch (Exception e_st){
                    System.out.println(e_st.getMessage());
                }
            } 
            if (db_con != null){
            try {
                db_con.close();
            } catch (Exception e_con){
                System.out.println(e_con.getMessage());
            }
            }
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
