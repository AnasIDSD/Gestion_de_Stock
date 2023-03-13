package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import Bean.Items;
import java.sql.*;
import Connection.SelectOP;
import Connection.Transactions;
/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Items item = new Items();
        item.setItem_Name(request.getParameter("ItemName"));
        item.setItem_weight(Integer.parseInt(request.getParameter("weight")));
        item.setItem_QTY(Integer.parseInt(request.getParameter("quantity")));
        ResultSet provider_id=SelectOP.getData("select provider_id from provider where upper(provider_name)like upper('"+request.getParameter("Provider")+"')");
        try {
			item.setProvider_id(provider_id.getInt(1));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        ResultSet category_id=SelectOP.getData("select category_id from category where upper(category_name)like upper('"+request.getParameter("Category")+"')");
        try {
			item.setCategory_id(category_id.getInt(1));
		} catch (SQLException err) {
			// TODO Auto-generated catch block
			err.printStackTrace();
		}
        System.out.println(item.getProvider_id());
        item.setDescritpion(request.getParameter("description"));
        
        String Query="insert into items values (sequence_items.nextval,'"+item.getItem_Name()+"','"+item.getItem_weight()+"','"+item.getItem_QTY()+"','"+item.+"','"+order.getpaymentstatus()+"','"+order.getServestatus()+"')" ;
        Transactions.DATA(Query,"Created Successfully");
        
        

		doGet(request, response);
	}

}
