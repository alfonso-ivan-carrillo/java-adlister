package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")

public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // TODO: show the registration form
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // TODO: ensure the submitted information is valid
        // instructor solution
//        String username = request.getParameter("username");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        if (username.trim().isEmpty() || email.trim().isEmpty() || password.trim().isEmpty() || DaoFactory.getUserDao().findByUsername(username).getUsername() != null){
//           response.sendRedirect("/register");
//        } else {
//            User used = new User (username, email, password);
//
//            DaoFactory.getUserDao().insert(used);
//        request.getSession().setAttribute("user", user);
//            response.sendRedirect("/profile");
//        }

        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
        User used = new User (
                request.getParameter("username"),
                request.getParameter("email"),
                request.getParameter("password")
        );
        DaoFactory.getUserDao().insert(used);
        response.sendRedirect("/profile");
    }
}
