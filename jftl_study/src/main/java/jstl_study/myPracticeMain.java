package jstl_study;

public class myPracticeMain {
	
	public static void main(String[] args) {
		int myInt = 5;
		Integer anotherInt = Integer.valueOf(5);
		boolean isTwoWorks = (myInt == anotherInt) ? true : false;
		
		System.out.println(isTwoWorks);
	}
}
