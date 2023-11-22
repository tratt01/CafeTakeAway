package CafeTakeAway.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUser implements RowMapper<User> {

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User(rs.getString("maNV"), rs.getString("username"), rs.getString("password"), rs.getString("chucvu"));
		return user;
	}
	
}
