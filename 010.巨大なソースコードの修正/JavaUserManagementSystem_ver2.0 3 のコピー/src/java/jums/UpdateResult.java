package jums;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hayashi-s
 */
public class UpdateResult extends HttpServlet {

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
         

        //　セッションスタート
        HttpSession session = request.getSession();//エンコード
        
    try{
        //エンコード
        request.setCharacterEncoding("UTF-8");    
        
        //　アクセスチェック
        String accesschk = request.getParameter("ac");
        if(accesschk == null || (Integer)session.getAttribute("ac") != Integer.parseInt(accesschk)){
            throw new Exception("不正なアクセスです");
        }
     
        //フォームの値を取り出す
        String name = request.getParameter("name");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String tell = request.getParameter("tell");
        String type = request.getParameter("type");
        String comment = request.getParameter("comment");
        
        //UDBに入れる
        UserDataBeans udb = new UserDataBeans();
        udb.setName(name);
        udb.setYear(year);
        udb.setMonth(month);
        udb.setDay(day);
        udb.setTell(tell);
        udb.setType(type);
        udb.setComment(comment);
        
        UserDataDTO update = new UserDataDTO();
        udb.UD2DTOMapping(update);
        
        UserDataDAO.getInstance().update(update);
        
        //　成功したので値を削除
        session.invalidate();
        
        //　リクエストパラメーターに入れる
        request.setAttribute("udb", udb);
        
        //　フォワード
        request.getRequestDispatcher("/updateresult.jsp").forward(request,response);
    
     }catch(Exception e){
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
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

