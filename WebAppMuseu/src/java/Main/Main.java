package Main;

import java.util.ArrayList;
import java.util.List;
import model.Museu;
import org.springframework.ui.Model;
import persistence.ConnectionFactory;
import persistence.DAOException;
import persistence.MuseuDAO;

public class Main {
    public static void main (String args[]){
        List<Museu> l = new ArrayList<Museu>();
        MuseuDAO mus;
        try{
            mus = new MuseuDAO();
            l = mus.getMuseusByNome("Museu de C");
        }catch (Exception e){
            e.printStackTrace();
            return;
        }
        for(int i = 0; i < l.size(); i++) {
            System.out.print(l.get(i).getNome() + " ");
            System.out.print(l.get(i).getEmail() + " ");
            System.out.print(l.get(i).getTelefone() + " ");
            System.out.print(l.get(i).getRua() + " ");
            System.out.print(l.get(i).getNumero() + " ");
            System.out.print(l.get(i).getBairro() + " ");
            System.out.print(l.get(i).getPreco() + " ");
            System.out.println(l.get(i).getCidade());
        }
        
        return;
    }
}
