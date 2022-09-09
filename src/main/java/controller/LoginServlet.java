package controller;

import logic.LibraryLoginDao;
import model.LibraryLogin;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    public static final long serialVersionUID = 1L;
    private LibraryLoginDao libraryLoginDao;
    public void init(){
        libraryLoginDao = new LibraryLoginDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //  response.getWriter().append("Served at: ").append(request.getContextPath());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LibraryLogin libraryLogin = new LibraryLogin();
        libraryLogin.setUsername(username);
        libraryLogin.setPassword(password);

        try {
            if (libraryLoginDao.checkuser(libraryLogin)){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/homepage.jsp");
                dispatcher.forward(request, response);
            }
            else{
                HttpSession session = request.getSession();
            }
        }
        catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }
}
