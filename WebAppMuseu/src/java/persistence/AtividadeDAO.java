package persistence;

import model.Atividade;
import java.sql.*;

public class AtividadeDAO {
    private Connection conn;
    
    public AtividadeDAO() throws DAOException{
        this.conn = ConnectionFactory.getConnection();
    }
}
