package co.edu.sena.project_2687365.model.repository;

import co.edu.sena.project_2687365.model.User;
import co.edu.sena.project_2687365.model.User;


import java.sql.SQLException;


public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        co.edu.sena.project_2687365.model.repository.Repository<User> repository = new UserRepositoryImpl();

        System.out.println("========saveObj Insert===========");
        User userInsert1 = new User();
        userInsert1.setUser_firstname("Zuly");
        userInsert1.setUser_lastname("Ballesteros");
        userInsert1.setUser_email("zb23@gmail.com");
        userInsert1.setUser_password("zulyba232005");
        repository.saveObj(userInsert1);

        User userInsert2 = new User();
        userInsert2.setUser_firstname("Vannerieth");
        userInsert2.setUser_lastname("Hernandez");
        userInsert2.setUser_email("van23@gmail.com");
        userInsert2.setUser_password("vanhernan23");
        repository.saveObj(userInsert2);


        System.out.println("========== listaObj =========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ===========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("============== saveObj ===========");
        User userUpdate = new User();
        userUpdate.setUser_firstname("Esteban");
        userUpdate.setUser_lastname("Salazar");
        userUpdate.setUser_email("estebansal@gmail.com");
        userUpdate.setUser_password("estebansal04");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj ============");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);

    }
}

