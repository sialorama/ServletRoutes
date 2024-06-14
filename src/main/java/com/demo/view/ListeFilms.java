package com.demo.view;

import com.demo.controller.FilmController;
import com.demo.model.Film;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListeFilms",value="/ListeFilms")
public class ListeFilms extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        FilmController ac = new FilmController();
        List<Film> films = ac.getFilms();
        request.setAttribute("films",films);
        RequestDispatcher dispatch = request.getRequestDispatcher("/liste-des-films.jsp");
        dispatch.forward (request, response);
    }
}