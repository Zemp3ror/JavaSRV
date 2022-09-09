package logic;

import model.LibraryLogin;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class LibraryLoginDao {

    public boolean checkuser(LibraryLogin libraryLogin) throws ClassNotFoundException {
        boolean status = false;

        try {

            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/java_ee_db", "postgres", "h54ffn6c");
             PreparedStatement preparedStatement = connection.prepareStatement("select * from libraryusers where username = ? and password = ? ")) {
            preparedStatement.setString(1, libraryLogin.getUsername());
            preparedStatement.setString(2, libraryLogin.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
        }
        catch (SQLException e){
            printSQLException(e);
        }
       
        return status;
    }

    private void printSQLException(SQLException e) {
    }
}
