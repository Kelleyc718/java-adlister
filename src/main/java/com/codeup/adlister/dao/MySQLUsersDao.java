package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao (Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.getStackTrace();
        }
    }

    @Override
    public User findByUsername(String username) {
        String str = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try{
            PreparedStatement stmt = connection.prepareStatement(str);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return getUser(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private User getUser(ResultSet rs) throws SQLException {
        return new User(
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("password")
        );
    }

    @Override
    public Long insert(User user) {
        String str = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(str, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            e.getStackTrace();
        }
        return null;
    }
}
