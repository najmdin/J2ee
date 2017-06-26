package logg;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import logg.etu;
public interface ensinter {
    public List<etu> listetu(String cls);
    public void abbs(int id ,String cl) throws SQLException, ParseException;
 
}
