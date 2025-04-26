package com.honeySecure.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.honeySecure.dao.ProductDao;
import com.honeySecure.pojo.Product;



public class ProductDaoImpl implements ProductDao {

	Connection con = null;

	public ProductDaoImpl() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/honeySecure","root","aakanksha01");
		} catch (Exception e) {
			System.out.println("Error in loading drivers and making connections"+e);
		}
	}

	@Override
	public boolean addProduct(Product p) {
		boolean b = false;
		try {
			PreparedStatement ps = con.prepareStatement("INSERT INTO product VALUES (?, ?, ?)");
			ps.setInt(1, p.getPid());
			ps.setString(2, p.getPname());
			ps.setDouble(3, p.getPrice());
			int x = ps.executeUpdate();
			if (x > 0)
				b = true;
		} catch (Exception e) {
			b = false;
			System.out.println("error"+e);
			
		}
		return b;
	}

	@Override
	public boolean updateProduct(Product p) {
		boolean b = false;
		try {
			PreparedStatement ps = con.prepareStatement("UPDATE product SET name = ?, price = ? WHERE pid = ?");
			ps.setString(1, p.getPname());
			ps.setDouble(2, p.getPrice());
			ps.setInt(3, p.getPid());
			int x = ps.executeUpdate();
			if (x > 0)
				b = true;
		} catch (Exception e) {
			b = false;
			System.out.println("error"+e);
		}
		return b;
	}

	@Override
	public boolean deleteProduct(Product p) {
		boolean b = false;
		try {
			PreparedStatement ps = con.prepareStatement("DELETE FROM product WHERE pid = ?");
			ps.setInt(1, p.getPid());
			int x = ps.executeUpdate();
			if (x > 0)
				b = true;
		} catch (Exception e) {
			b = false;
			System.out.println("error"+e);
		}
		return b;
	}

	@Override
	public Product searchProduct(int pid) {
		Product p = new Product();
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM product WHERE pid = ?");
			ps.setInt(1, pid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				p = new Product();
				p.setPid(rs.getInt("pid"));
				p.setPname(rs.getString(""
						+ "name"));
				p.setPrice(rs.getDouble("price"));
			}
		} catch (Exception e) {
			p = null;
			System.out.println("error"+e);
		}
		return p;
	}

	@Override
	public List<Product> getAllProducts() {
		List<Product> list = new ArrayList<>();
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM product");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setPid(rs.getInt("pid"));
				p.setPname(rs.getString("name"));
				p.setPrice(rs.getDouble("price"));
				list.add(p);
			}
		} catch (Exception e) {
			list.clear();
			System.out.println("error"+e);
		}
		return list;
	}
}
