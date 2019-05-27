package lib;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class BDTest {
    private Connection conec;
    private Statement estado;
    
    public BDTest(){
        try{
            Class.forName("org.postgresql.Driver").newInstance();
            String coneccao = "jdbc:postgresql://localhost/Museus", usuario = "postgres", senha = "123";
            conec = DriverManager.getConnection(coneccao, usuario, senha);
            estado = conec.createStatement();
            
            System.out.println("FUNCIONA POHA");
            
            conec.close();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Erro na conecção do BD");
        }
    }
    
    public static void main(String args[]){
        BDTest t = new BDTest();
    }
    
    
}
