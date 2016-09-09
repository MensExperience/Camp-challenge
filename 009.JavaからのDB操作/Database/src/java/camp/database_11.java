/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package camp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;




/**
 *
 * @author uezuchiharu
 * 
 * JAVAからのDBアクセス
 * 課題11:profileIDで指定したレコードの、profileID以外の要素をすべて上書きできるフォームを作成してください
 * 
 */
public class database_11 extends HttpServlet {

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
        
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
        SimpleDateFormat birthday = new SimpleDateFormat("yyyy-MM-dd");
        
        
        try
        {
           request.setCharacterEncoding("UTF-8");
           
           Integer userID = Integer.parseInt(request.getParameter("id"));
           String reName = request.getParameter("name");
           Integer reAge = Integer.parseInt(request.getParameter("age"));
           String reYear = request.getParameter("year");
           String reMonth = request.getParameter("month");
           String reDay = request.getParameter("day");
           
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           
           db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","root","mezzo0322");
           
           //更新前のデータを表示
           out.print("userID:" + userID + "のデータを更新します<br><br><br>＜更新前のデータ＞<br><br>");
           
           db_st = db_con.prepareStatement("select * from user where userID = ?");
           
           db_st.setInt(1, userID);
           
           db_data = db_st.executeQuery();
           
           while(db_data.next()){
               out.print("usreID：" + db_data.getInt("userID") + "<br>" + 
                       "名前：" + db_data.getString("name") + "<br>" +
                       "年齢：" + db_data.getInt("age") + "<br>" +
                       "誕生日" + db_data.getDate("birthday") + "<br><br>");
           }
           
           
           db_st = db_con.prepareStatement("update user set name = ? , age = ? , birthday = ? where userID = ?");
           
           db_st.setString(1, reName);
           db_st.setInt(2, reAge);
           db_st.setDate(3, new java.sql.Date(birthday.parse(reYear + "-" + reMonth + "-" + reDay).getTime()));
           db_st.setInt(4, userID);
           
           int i = db_st.executeUpdate();
           
           if (i != 0){
            out.print("userID:" + userID + "を更新しました！<br><br>");
           }
           else{
                   out.print("userID：" + userID + "を更新できませんでした<br><br>");
           }
           
           //更新後のデータを表示
           db_st = db_con.prepareStatement("select * from user where userID = ?");
           db_st.setInt(1, userID);
           
           db_data = db_st.executeQuery();
           
           out.print("＜更新後のデータ＞<br><br>");
           
           while(db_data.next()){
               out.print("usreID：" + db_data.getInt("userID") + "<br>" + 
                       "名前：" + db_data.getString("name") + "<br>" + 
                       "年齢：" + db_data.getInt("age") + "<br>" + 
                       "誕生日：" + db_data.getDate("birthday"));
           }
           
           db_data.close();
           db_st.close();
           db_con.close();
        
        //エラーハンドリング       
        } catch (SQLException e_sql){
            out.printf("接続時にエラーが発生しました" + e_sql.toString());
        } catch (Exception e){
            out.print("接続時にエラーが発生しました" + e.toString());
        } finally {
            if (db_data != null){
                try {
                    db_data.close();
                } catch (Exception e_data){
                    System.out.printf(e_data.getMessage());
                }                
            } if (db_st != null) {
                try{
                    db_st.close();
                } catch (Exception e_st){
                    System.out.print(e_st.getMessage());
                }
            } if (db_con != null){
                try {
                    db_con.close();
                } catch (Exception e_con){
                    System.out.printf(e_con.getMessage());
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
