package com.gmail.kulacholeg.servlet;

import com.gmail.kulacholeg.entity.User;
import com.gmail.kulacholeg.repository.FakeUserRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/users")
public class ShowUsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = FakeUserRepository.getAllUsers();
        req.setAttribute("users", users);
        req.getRequestDispatcher("/jsp/users.jsp").forward(req, resp);
    }
}
