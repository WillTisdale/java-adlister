package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        List<String> names = DaoFactory.getUsersDao().all();
        boolean nameExists = false;
        for(String name:names){
            if(name.equals(username)){
                nameExists = true;
            }
        }
        if(nameExists){
            User user = DaoFactory.getUsersDao().findByUsername(username);
            boolean validAttempt = false;
            if(user.getUsername().equals("name")){
                session.setAttribute("loggInError", true);
                response.sendRedirect("/login");
                return;
            } else if(user.getUsername().equals(username)){
                if(user.getPassword().equals(password)){
                    validAttempt = true;
                } else {
                    session.setAttribute("loggInError", true);
                    response.sendRedirect("/login");
                    return;
                }
            }
            if (validAttempt) {
                session.setAttribute("isLoggedIn", true);
                request.getSession().setAttribute("user", user);
                request.getSession().setAttribute("username", user.getUsername());
                session.removeAttribute("logInError");
                response.sendRedirect("/profile");
            } else {
                response.sendRedirect("/login");
            }
        } else {
            session.setAttribute("logInError", true);
            response.sendRedirect("/login");
        }
    }
}
