/* I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/userManagementApplication
  https://www.youtube.com/watch?v=-3m2_wHWXf4&t=3416s */

package com.xadmin.newstartmanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.newstartmanagement.model.Recruit;

/**
 *
 * @author amydolan
 */
public class RecruitDao {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/rmanagement?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "4n*loxwa";

	private static final String INSERT_RECRUIT_SQL = "INSERT INTO recruits" + "  (name, startdate, email, role, address, manager, requirements, updates) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?, ?);";

	private static final String SELECT_RECRUIT_BY_ID = "select id,name,startdate,email,role,address,manager,requirements,updates from recruits where id =?";
	private static final String SELECT_ALL_RECRUITS = "select * from recruits";
	private static final String DELETE_RECRUIT_SQL = "delete from recruits where id = ?;";
	private static final String UPDATE_RECRUIT_SQL = "update recruits set name = ?,startdate = ?,email= ?,role = ?,address =?,manager = ?,requirements = ?,updates = ? where id = ?;";

	public RecruitDao() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertRecruit(Recruit recruit) throws SQLException {
		System.out.println(INSERT_RECRUIT_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RECRUIT_SQL)) {
			preparedStatement.setString(1, recruit.getName());
			preparedStatement.setString(2, recruit.getStartdate());
			preparedStatement.setString(3, recruit.getEmail());
                        preparedStatement.setString(4, recruit.getRole());
			preparedStatement.setString(5, recruit.getAddress());
			preparedStatement.setString(6, recruit.getManager());
                        preparedStatement.setString(7, recruit.getRequirements());
			preparedStatement.setString(8, recruit.getUpdates());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Recruit selectRecruit(int id) {
		Recruit recruit = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RECRUIT_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String name = rs.getString("name");
                                String startdate = rs.getString("startdate");
				String email = rs.getString("email");
				String role = rs.getString("role");
                                String address = rs.getString("address");
                                String manager = rs.getString("manager");
                                String requirements = rs.getString("requirements");
                                String updates = rs.getString("updates");
				recruit = new Recruit(id, name, startdate, email, role, address, manager, requirements, updates);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return recruit;
	}

	public List<Recruit> selectAllRecruits() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Recruit> recruits = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_RECRUITS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");				
                                String name = rs.getString("name");
                                String startdate = rs.getString("startdate");
				String email = rs.getString("email");
				String role = rs.getString("role");
                                String address = rs.getString("address");
                                String manager = rs.getString("manager");
                                String requirements = rs.getString("requirements");
                                String updates = rs.getString("updates");
				recruits.add(new Recruit(id, name, startdate, email, role, address, manager, requirements, updates));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return recruits;
	}

	public boolean deleteRecruit(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_RECRUIT_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateRecruit(Recruit recruit) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_RECRUIT_SQL);) {
			System.out.println("updated Recruit:"+statement);
			statement.setString(1, recruit.getName());
			statement.setString(2, recruit.getStartdate());
			statement.setString(3, recruit.getEmail());
                        statement.setString(4, recruit.getRole());
			statement.setString(5, recruit.getAddress());
			statement.setString(6, recruit.getManager());
                        statement.setString(7, recruit.getRequirements());
			statement.setString(8, recruit.getUpdates());
			statement.setInt(9, recruit.getId());                        

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
    
}
