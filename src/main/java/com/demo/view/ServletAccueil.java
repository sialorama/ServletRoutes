package com.demo.view;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ServletAccueil", value = "/Servlet-Accueil")
public class ServletAccueil extends HttpServlet {
    private String message;

    public void init() {
        message = "Ce message est affiché sur la seconde page, grace au lien dans la page index.jps et la servlet 'ServletAccueil'.";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}