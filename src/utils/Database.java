package utils;


import entities.*;

import java.sql.*;
import java.util.ArrayList;

public class Database {
    private Connection connection;

    public Database() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch(ClassNotFoundException e) {
            e.getMessage();
        }
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost/time_management2", "root", "8305274397");
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            connection.close();
        } catch(SQLException e) {
            e.getMessage();
        }
    }

    public boolean isEmailAvailable(String email, String table) {
        String query = "SELECT * FROM " + table + " WHERE mail=\"" + email + "\"";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if(resultSet.first()) {
                return false;
            }
            return true;
        } catch(SQLException e) {
            e.getMessage();
            return false;
        }
    }

    public boolean isUsernameAvailable(String username, String table) {
        String query = "SELECT * FROM " + table + " WHERE username=\"" + username + "\"";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if(resultSet.first()) {
                return false;
            }
            return true;
        } catch(SQLException e) {
            e.getMessage();
            return false;
        }
    }

    public boolean registerClient(Client client) {
        String query = "INSERT INTO clients(first_name, last_name, username, password, mail) VALUES(?, ?, ?, ?, ?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, client.getFirstName());
            preparedStatement.setString(2, client.getLastName());
            preparedStatement.setString(3, client.getUsername());
            preparedStatement.setString(4, client.getPassword());
            preparedStatement.setString(5, client.getEmail());
            return preparedStatement.execute();
        } catch(SQLException e) {
            try {
                connection.rollback();
            } catch(SQLException ex) {
                ex.getMessage();
            }
            e.getMessage();
            return false;
        } finally {
            if(connection != null) {
                try {
                    connection.close();
                } catch(SQLException e) {
                    e.getMessage();
                }
            }
        }

    }

    public boolean registerProfessional(Professional professional) {
        String query = "INSERT INTO professional(fname, family, username, password, qualification, business_name, address, phone, service_id, city_id)" +
                "VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, professional.getFirstName());
            statement.setString(2, professional.getFamily());
            statement.setString(3, professional.getUsername());
            statement.setString(4, professional.getPassword());
            statement.setString(5, professional.getQualification());
            statement.setString(6, professional.getBusinessName());
            statement.setString(7, professional.getAddress());
            statement.setString(8, professional.getPhone());
            statement.setInt(9, professional.getServiceId());
            statement.setInt(10, professional.getCityId());
            return statement.execute();
        } catch(SQLException e) {
            return false;
        } finally {
            try {
                if(connection != null) {
                    connection.close();
                }
            } catch(SQLException e) {

            }
        }
    }

    public ArrayList<City> getCities() {
        ArrayList<City> cities = null;
        String query = "SELECT * FROM cities";
        try {
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(query);
            cities = new ArrayList<>();
            while(result.next()) {
                City city = new City(result.getInt("id"), result.getString("city_name"), result.getString("post_code"));
                cities.add(city);
            }
        } catch(SQLException e) {
            e.getMessage();
            return cities;
        }
        return cities;
    }

    public ArrayList<Service> getServices() {
        ArrayList<Service> services = null;
        String query = "SELECT * FROM services";
        try {
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(query);
            services = new ArrayList<>();
            while(result.next()) {
                Service service = new Service(result.getInt("id"), result.getString("service_name"), result.getInt("service_type_id"));
                services.add(service);
            }
        } catch(SQLException e) {
            System.out.print(e.getMessage());
            return services;
        }
        return services;
    }

    public User login(String username, String password) {
        User user = null;

        String clientsQuery = "SELECT first_name, last_name FROM clients WHERE username=? AND password=?";
        String proQuery = "SELECT fname, family FROM professional WHERE username=? AND password=?";
        try {
            PreparedStatement statement = connection.prepareStatement(clientsQuery);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet result = statement.executeQuery();
            if(result.first()) {
                user = new User(result.getString("first_name"), result.getString("last_name"));
            } else {
                statement = connection.prepareStatement(proQuery);
                statement.setString(1, username);
                statement.setString(2, password);
                result = statement.executeQuery();
                if(result.first()) {
                    user = new User(result.getString("first_name"), result.getString("last_name"));
                }
            }
        } catch(SQLException e) {

        }
        return user;
    }
}
