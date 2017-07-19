package com.library;

import java.util.HashMap;
import java.util.Map.Entry;

public class BookStore {

	final static HashMap<String, String> bookdetails = new HashMap<>();

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

	public static boolean delBook(String book_name) {
		if (bookdetails.containsKey(book_name)) {
			bookdetails.remove(book_name);
			System.out.println("deleted");
			System.out.println(bookdetails);
			return true;
		} else
			return false;
	}
	public static void showBooks(){
		for(Entry<String, String> entry:bookdetails.entrySet()){
			
		}
	}

}
