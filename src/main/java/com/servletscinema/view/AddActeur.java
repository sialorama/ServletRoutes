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

@WebServlet(name = "AddActeur", value = "/Add-Acteur")
public class AddActeur extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Extract parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String photo = request.getParameter("photo");

        // Create Acteur object
        Acteur acteur = new Acteur(firstName, lastName, photo);

        // Instantiate ActeurController
        ActeurController acteurController = new ActeurController();

        // Add acteur using controller
        acteurController.addActeur(acteur);

        // Set acteur object as request attribute
        request.setAttribute("acteur", acteur);

        // Forward request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ajouter-un-acteur.jsp");
        dispatcher.forward(request, response);
    }
}
