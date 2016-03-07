/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uta.cse4361.databases;

import java.sql.SQLException;

/**
 *
 * @author Andrew
 */
public class CheckPasswordExpired extends RDBImplCommand {

    private String email;
    private boolean expired;
         
    private String sqlQuery = "SELECT (DATE_ADD(UserDatePasswordChanged, INTERVAL 1 YEAR) < NOW()) as Expired FROM USER WHERE UserEmail = ?";

    public CheckPasswordExpired(String email){
        this.email = email;
    }
    
    public void queryDB() throws SQLException{
        try{
            statement = conn.prepareStatement(sqlQuery);
            statement.setString(1, email);
            resultSet = statement.executeQuery();
            processResult();
        }
        catch(SQLException e){
        System.out.println("CheckPasswordExpired Failed");
            conn.close();
        } finally {
            statement.close();
        }
    }
    
    public void processResult(){
        try{
            result = "Invalid login";
            if(resultSet.next()){
                expired = resultSet.getInt("Expired") == 1;
                result = expired;
            }
        }
        catch(SQLException e){
            System.out.println("CheckPasswordExpired failed");
        }
    }
}
