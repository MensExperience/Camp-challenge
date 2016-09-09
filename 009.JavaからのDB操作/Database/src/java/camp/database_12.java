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
 * 課題12:検索用のフォームを用意し、名前、年齢、誕生日を使った複合検索ができるようにしてください
 * 
 */
public class database_12 extends HttpServlet {

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
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        
        try
        {
            request.setCharacterEncoding("UTF-8");
            
            Integer reID = Integer.parseInt(request.getParameter("id"));
            String reName = request.getParameter("name");
            Integer reAge = Integer.parseInt(request.getParameter("age"));
            Integer reYear = Integer.parseInt(request.getParameter("year"));
            Integer reMonth = Integer.parseInt(request.getParameter("month"));
            Integer reDay = Integer.parseInt(request.getParameter("day"));
            //Integer search = Integer.parseInt(request.getParameter("search"));
         
            Class.forName("com.mysql.jdbc.Driver").newInstance();
          
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","root","mezzo0322");
            
            
                db_st = db_con.prepareStatement("select * from user where userID = ? or name = ? or age = ? or birthday = ?");
                
                  db_st.setInt(1, reID);
                  db_st.setString(2, reName);
                  db_st.setInt(3, reAge);
                  db_st.setDate(4, new java.sql.Date(sdf.parse(reYear + "-" + reMonth + "-" + reDay).getTime()));
                  db_data = db_st.executeQuery(); 
           
            //検索結果を表示
            out.print("検索結果<br><br>");
            
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
