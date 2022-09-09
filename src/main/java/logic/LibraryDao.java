package logic;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import model.Library;

public class LibraryDao {



    public int registerLibraryUser(Library library) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO libraryusers" + " (firstname, lastname, username, password, email, phonenumber, book) VALUES" +
                "(?,?,?,?,?,?,?);";
        int result=0;

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        try {
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/java_ee_db", "postgres", "h54ffn6c");
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
           // ResultSet result = statement.executeQuery("SELECT  title, author FROM books");

            //preparedStatement.setInt(1, 1);
            preparedStatement.setString(1, library.getFirstName());
            preparedStatement.setString(2, library.getLastName());
            preparedStatement.setString(3, library.getUsername());
            preparedStatement.setString(4, library.getPassword());
            preparedStatement.setString(5, library.getEMail());
            preparedStatement.setString(6, library.getPhoneNumber());
            preparedStatement.setString(7, library.getBook());

            System.out.println(preparedStatement);
            result=preparedStatement.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
}

//            while (result.next()){
//                //pw.println(result.getString("title"));
//
//                tc.bookId=result.getInt("Id");
//                tc.title_book = result.getString("title");
//                tc.author = result.getString("author");
//            }
//
//
//
//            statement.close();
//
//            System.out.println("Ид книги: " + tc.bookId);
//            System.out.println("Название : " + tc.title_book);
//            System.out.println("Автор : " + tc.author);






//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PrintWriter pw = response.getWriter();
//
//
//
//    }
//
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    }
//
//}
