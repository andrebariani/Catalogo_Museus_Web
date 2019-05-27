package persistence;

import model.Museu;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MuseuDAO {
    private Connection conn;
    
    public MuseuDAO() throws DAOException{
        this.conn = ConnectionFactory.getConnection();
    }
    
    public List getMuseusByNome(String nome) throws SQLException{
        List<Museu> l = new ArrayList<Museu>();
        PreparedStatement stmt;
        ResultSet r;
        String SQL = "SELECT * FROM museu WHERE nome_mus LIKE '" + nome + "%'";
        stmt = conn.prepareStatement(SQL);
        
        r = stmt.executeQuery();
        
        while(r.next()){
            Museu m = new Museu();
            m.setNome(r.getString("nome_mus"));
            m.setEmail(r.getString("email"));
            m.setBairro(r.getString("bairro"));
            m.setNumero(r.getString("numero"));
            m.setRua(r.getString("rua"));
            m.setTelefone(r.getString("telefone"));
            m.setCidade(r.getString("cidade"));
            m.setPreco(r.getFloat("preco_ent"));
            l.add(m);
        }
        
        return l;
    }
}
