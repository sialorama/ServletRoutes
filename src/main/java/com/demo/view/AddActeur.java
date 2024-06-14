package com.demo.view;

import com.demo.controller.ActeurController;
import com.demo.model.Acteur;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


    @WebServlet(name = "AddActeur", value = "/AddActeur")
    public class AddActeur extends HttpServlet {
        @Override
        public void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

            // Create Acteur object
            Acteur acteur = new Acteur("Brando", "Marlon", "brando.jpg");
            // Instantiate ActeurController
            ActeurController acteurController = new ActeurController();
            // Add acteur using controller
            acteurController.addActeur(acteur);
            // Set acteur object as request attribute
            request.setAttribute("acteurs", acteur);
            // Forward request to the JSP page
            RequestDispatcher dispatcher = request.getRequestDispatcher("/ajouter-un-acteurs.jsp");
            dispatcher.forward(request, response);
        }
    }
