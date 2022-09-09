package controller;

import logic.LibraryDao;
import model.Library;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet("/register")
public class LibraryServlet extends HttpServlet {

    private LibraryDao libraryDao = new LibraryDao();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/libraryuserregister.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("userName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phoneNumber");
        String book = request.getParameter("book");

        Library library = new Library();
        library.setFirstName(firstName);
        library.setLastName(lastName);
        library.setUsername(username);
        library.setPassword(password);
        library.setEMail(email);
        library.setPhoneNumber(phonenumber);
        library.setBook(book);

        try {
            libraryDao.registerLibraryUser(library);
        }
        catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/libraryuserdeatil.jsp");
        dispatcher.forward(request, response);
    }
}
