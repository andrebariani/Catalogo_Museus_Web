package persistence;

import model.Colecao;
import java.sql.*;

public class ColecaoDAO {
    private Connection conn;
    
    public ColecaoDAO() throws DAOException{
        this.conn = ConnectionFactory.getConnection();
    }
}
