package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AgeCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String age = request.getParameter("newAge");
        int newAge;

        if (age == null || age.equals("")) {

            request.setAttribute("answer", "Invalid Entry. Please Enter Your Current Age");

            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        }

        char i = age.charAt(0);

        if (Character.isLetter(i) || age.length() > 2) {

            request.setAttribute("answer", "Invalid Entry. Please Enter A Whole Numerical Value Between 0-99");

            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        }

        newAge = Integer.parseInt(age) + 1;

        request.setAttribute("answer", "Your Age Next Birthday Will Be " + newAge);

        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
    }
}
