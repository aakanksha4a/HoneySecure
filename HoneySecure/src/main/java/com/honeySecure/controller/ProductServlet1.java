package com.honeySecure.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import com.honeySecure.daoimpl.ProductDaoImpl;
import com.honeySecure.pojo.Product;

@WebServlet("/ProductServlet1")
public class ProductServlet1 extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid=0;
		Double price=0.00;
	    Product p = new Product();
	    try {
	         pid = Integer.parseInt(request.getParameter("pid"));
	    } catch (NumberFormatException e) {
	        System.out.println("Invalid Product id: " + e);
	    }

	    String pname = request.getParameter("pname");

	    try {
	         price = Double.parseDouble(request.getParameter("price"));
	    } catch (NumberFormatException e) {
	        System.out.println("Invalid Product price: " + e);
	    }

	    String op = request.getParameter("b1");
	   
	    //String file ="data.txt";
	    String filePath = "C:\\Users\\admin\\OneDrive\\Desktop\\HoneySecure\\HoneySecure\\src\\main\\webapp\\files\\data.txt" ;  

	    try (PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(filePath, true)))) {
	    	if(op.equals("Add")) {
	    		out.println("Operation: " + op);
		        out.println("Product ID: " + pid);
		        out.println("Product Name: " + pname);
		        out.println("Price: " + price);
		        out.println("Timestamp: " + LocalDateTime.now());
		        out.println("------");
		        request.setAttribute("msg", "Product Added Successfully");
	    	}
	    	if(op.equals("Update")) {
	    		out.println("Operation: " + op);
		        out.println("Product ID: " + pid);
		        out.println("Product Name: " + pname);
		        out.println("Price: " + price);
		        out.println("Timestamp: " + LocalDateTime.now());
		        out.println("------");
		        request.setAttribute("msg", "Product Updated Successfully");
	    	}
	    	if(op.equals("Delete")) {
	    		out.println("Operation: " + op);
		        out.println("Product ID: " + pid);
		        out.println("Product Name: " + pname);
		        out.println("Price: " + price);
		        out.println("Timestamp: " + LocalDateTime.now());
		        out.println("------");
		        request.setAttribute("msg", "Product Deleted Successfully");
	    	}
	    	if(op.equals("Update Product")) {
	    		out.println("Operation: " + op);
		        out.println("Product ID: " + pid);
		        out.println("Product Name: " + pname);
		        out.println("Price: " + price);
		        out.println("Timestamp: " + LocalDateTime.now());
		        out.println("------");
		        request.setAttribute("msg", "Product Updated Successfully");
		        RequestDispatcher rd = request.getRequestDispatcher("modifyproduct1.jsp");
			    rd.forward(request, response);
	    	}
	    } catch (IOException e) {
	        e.printStackTrace();
	        
	    }

	    
	    RequestDispatcher rd = request.getRequestDispatcher("amdproduct1.jsp");
	    rd.forward(request, response);
	    
	}

}
