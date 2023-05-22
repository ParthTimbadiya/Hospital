package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specialist;

public class SpecialistDao {
	
	private Connection con;

	public SpecialistDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean addSpecialist(String sp) {
		boolean f = false;
		
		try {
			
			 String sql = "insert into specialist (spName) values (?)";
			 
			 PreparedStatement ps = con.prepareStatement(sql);
			 ps.setString(1, sp);
			 
			int i = ps.executeUpdate();
			
			if(i == 1) {
				f = true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	public List<Specialist> getAllSpecialists(){
		
		List<Specialist> list = new ArrayList<Specialist>();
		
		Specialist s = null;
		
		try {
			
			
			String sql = "select * from specialist";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				
				s = new Specialist();
				s.setId(rs.getInt(1));
				s.setSpecialistName(rs.getString(2));
				list.add(s);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}

}
