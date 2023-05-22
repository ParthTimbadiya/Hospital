package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class User_Dao {

	private Connection con;

	public User_Dao(Connection con) {
		super();
		this.con = con;
	}

	public boolean userRegister(User user) {

		boolean f = false;

		try {

			String sql = "insert into user_details (name, email, password) values (?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user.getFullName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());

			int update = ps.executeUpdate();

			if (update == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public User login(String email, String password) {

		User user = null;

		try {

			String sql = "select * from user_details where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setFullName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;

	}

	public boolean checkOldPassword(int userId, String oldPassword) {

		boolean f = false;

		try {

			String sql = "select * from user_details where id=? and password=?";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setString(2, oldPassword);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public boolean changePassword(int userId, String newPassword) {

		boolean f = false;

		try {

			String sql = "update user_details set password=? where id=?";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setInt(2, userId);
			int i = ps.executeUpdate();

			if(i== 1) {
				f=true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

}
