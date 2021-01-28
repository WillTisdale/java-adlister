package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.mysql.cj.api.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // TODO: show the registration form
        request.getRequestDispatcher("/WEB-INF/users/register.jsp")
            .forward(request, response);
        session.removeAttribute("usernameError");
        session.removeAttribute("usernameExists");
        session.removeAttribute("emailError");
        session.removeAttribute("passwordError");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        // TODO: ensure the submitted information is valid
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if(username.length() < 8){
            session.setAttribute("usernameError", true);
            response.sendRedirect("/register");
            return;
        }
        if (!email.contains("@") || !email.contains(".")){
            session.setAttribute("emailError", true);
            response.sendRedirect("/register");
            return;
        }
        if(password.length() < 8){
            session.setAttribute("passwordError", true);
            response.sendRedirect("/register");
            return;
        }
        // TODO: create a new user based off of the submitted information
        List<String> names = DaoFactory.getUsersDao().all();
        boolean validName = true;
        for(String name:names){
            if(name.equals(username)){
                validName = false;
            }
        }
        if(validName){
            User user = new User(
            username, // for now we'll hardcode the user id
            email,
            password
            );
            DaoFactory.getUsersDao().insert(user);
            // TODO: if a user was successfully created, send them to their profile
            session.setAttribute("username", username);
            session.setAttribute("user", user);
            session.setAttribute("isLoggedIn", true);
            response.sendRedirect("/profile");
        } else {
            session.setAttribute("usernameExists", true);
            response.sendRedirect("/register");
        }

    }
}
