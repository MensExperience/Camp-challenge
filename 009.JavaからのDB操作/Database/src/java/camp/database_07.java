/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package camp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
 * 課題7:profileID=1のnameを「松岡 修造」に、ageを48に、birthdayを1967-11-06に更新してください
 * 
 */
public class database_07 extends HttpServlet {

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
        
        //dateの変数を用意
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        
        try
        {
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           
           db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","root","mezzo0322");
           
           db_st = db_con.prepareStatement("update user set name = ? , age = ? , birthday = ? where userID = ?");
           
           db_st.setString(1, "松岡　修造");
           db_st.setInt(2, 48);
           db_st.setDate(3, new java.sql.Date(sdf1.parse("1967-11-06").getTime()));
           db_st.setInt(4, 1);
           
           db_st.executeUpdate();
           
           //更新後のデータ表示
           db_st = db_con.prepareStatement("select * from user");
           
           db_data = db_st.executeQuery();
           
           out.print("情報を更新しました<br><br>");
           
           while(db_data.next()){
               out.print("userID：" + db_data.getInt("userID") + "<br>" +
                       "名前：" + db_data.getString("name") + "<br>" +
                       "年齢：" + db_data.getInt("age") + "<br>" + 
                       "誕生日：" + db_data.getDate("birthday") + "<br><br>");
               
           }
           
           db_data.close();
           db_st.close();
           db_con.close();
           
        //エラーハンドリング
        } catch (SQLException e_sql){
            out.print("接続時にエラーが発生しました" + e_sql.toString());
        } catch (Exception e){
            out.print("接続時にエラーが発生しました" + e.toString());
        } finally {
            if(db_data != null){
                try{
                    db_data.close();
                } catch (Exception e_data){
                    System.out.print(e_data.getMessage());
                }
            }
            if(db_st != null){
                try{
                    db_st.close();
                } catch (Exception e_st){
                    System.out.print(e_st.getMessage());
                }
            }
            if(db_con != null){
                try{
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
