package com.library;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class BookStore{
//hash map for library and user
	final static HashMap<String, String> bookdetails = new HashMap<>();
	final static HashMap<String, User> userdetails = new HashMap<>();
	//adding books to library
	
	
	public static boolean buyBook(String book){
		boolean flag=false;
		System.out.println("book buy"+book);
		if(!bookdetails.isEmpty()){
		if(bookdetails.containsKey(book)){
			bookdetails.remove(book);
			flag=true;
		}
		return flag;
		}else
		return false;
	}
	
	public static boolean addBook(String book_name, String book_details) {
		System.out.println("book_name  "+book_name+"  book_details   "+book_details);
		if (!(bookdetails.containsKey(book_name))) {
			bookdetails.put(book_name, book_details);
			System.out.println("added");
			System.out.println(bookdetails);
			return true;
		} else
			return false;
	}

	
	
	//delete books from library
	public static boolean delBook(String book_name) {
		if (bookdetails.containsKey(book_name)) {
			bookdetails.remove(book_name);
			System.out.println("deleted");
			System.out.println(bookdetails);
			return true;
		} else
			return false;
	}
	
	//Displaying books 
	public static HashMap<String,String>  showBooks(){
		if(!bookdetails.isEmpty()){
			return bookdetails;
		}
		else{
		return null;
	}}
	
	//checking user is there or not 
	public static boolean addUser(String name, String email, String pass, String re_pass) {
		userdetails.put("niranjanm09@gmail.com", new User("niranjan","N!ranjany1","N!ranjany1"));
		User object=new User(name,pass, re_pass);
		
			if(userdetails.containsKey(email))
				return false;
			else{
				userdetails.put(email,object);
				
				System.out.println(object);
				return true;
			}
		
	}

}
