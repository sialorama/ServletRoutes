package com.servletscinema.view;

import com.servletscinema.controller.ActeurController;
import com.servletscinema.model.Acteur;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListeActeurs",value="/Liste-Acteurs")
public class ListeActeurs extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ActeurController ac = new ActeurController();
        List<Acteur> acteurs = ac.getActeurs();
        request.setAttribute("acteurs",acteurs);
        RequestDispatcher dispatch = request.getRequestDispatcher("/liste-des-acteurs.jsp");
        dispatch.forward (request, response);
    }
}