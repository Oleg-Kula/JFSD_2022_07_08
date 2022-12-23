package com.gmail.kulacholeg.repository;

import com.gmail.kulacholeg.entity.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Emulates the logic of working with database
 */

public class FakeUserRepository {

    private static final List<User> userList;

    static {
        userList = new ArrayList<>();

        userList.add(new User("test", "test", "test"));
        userList.add(new User("Anton", "pass1", "Ant"));
        userList.add(new User("Elvis", "pass2", "Singer2202"));
        userList.add(new User("Eugen", "pass3", "CaMeL"));
        userList.add(new User("Trent", "pass4", "Tre33"));
    }

    public static List<User> getAllUsers() {
        return userList;
    }

    public static User getUserByLoginAndPassword(String login, String password) {
        for (User user : userList) {
            if (user.getLogin().equals(login) && user.getPassword().equals(password))
                return user;
        }
        return null;
    }
}
