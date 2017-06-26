package logg;

import java.sql.SQLException;
import java.util.List;

public interface respi {
public List<etu> listr(String cl);
public etu getetu(int id,String cl) throws SQLException;
public String ajout(etu et) throws SQLException;
public String sup(int id,String cl) throws SQLException;
public void mod(etu t) throws SQLException;
public String anabs(int id,String dt,String cl,String p) throws SQLException;
}
