package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        boolean hasResults = true;
        request.setAttribute("hasResults", hasResults);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("item");
        if (searchQuery.equals("showAll")){
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
            boolean hasResults = true;
            request.setAttribute("hasResults", hasResults);
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
            return;
        }
        request.setAttribute("ads", DaoFactory.getAdsDao().searchAds(searchQuery));
        boolean hasResults = DaoFactory.getAdsDao().searchAds(searchQuery).size() > 0;
        request.setAttribute("hasResults", hasResults);
        request.setAttribute("searchQuery", searchQuery);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
