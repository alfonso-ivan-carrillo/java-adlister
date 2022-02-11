package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users{
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public User findByUsername(String username){
        String sql = "SELECT * FROM users WHERE username = ?";
        // instructor solution
//        User user = new User();

        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);

            ResultSet rs = stmt.executeQuery();
            // instructor solution
//            rs.next();
//            user.setId(rs.getLong("id"));
//            user.setUsername(rs.getString("username"));
//            user.setEmail(rs.getString("email"));
//            user.setPassword(rs.getString("password"));
            return extractUser(rs);
        } catch(SQLException e){
            e.printStackTrace();
        }
        return new User();
    };

    private User extractUser(ResultSet rs) throws SQLException{
        List<User> used = new ArrayList<>();
        while(rs.next()){
            used.add(extractUser(rs));
        }
        return (User) used;
    }

    private User buildUser(ResultSet rs) throws SQLException{
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password")
        );
    }



    public Long insert(User user){
        try {
            String sqlInsertUser = "INSERT INTO users (username, email, password) VALUES(?, ?, ?)";
//            long id = 0;
            PreparedStatement stmt = connection.prepareStatement(sqlInsertUser, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
//            id = rs.getLong(1);
            return rs.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new user", e);
        }
    };


}
