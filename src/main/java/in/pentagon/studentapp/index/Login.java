package in.pentagon.studentapp.index;

import java.util.ArrayList;
import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImpl;
import in.pentagon.studentapp.dto.Student;

public class Login {
	public static void login() {
		Scanner sc=new Scanner(System.in);
		int choice=0;
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("<--Login Page-->");
		System.out.println("enter the mail:");
		String mail=sc.next();
		System.out.println("enter the password:");
		String pass=sc.next();
		Student a=sdao.getStudent(mail,pass);
		if(a!=null) {
			System.out.println("Login successful ! Welcome "+a.getName());
			do {
				System.out.println("1. view data");
				System.out.println("2. search users");
				System.out.println("3. update account");
				System.out.println("4. reset password");
				System.out.println("5. back to main menu");
				if(a.getId()==1) {
					System.out.println("6. view all users");
					System.out.println("7. delete the user");
				}
				choice=sc.nextInt();
				switch(choice) {
				case 1:System.out.println(a);
				break;
				case 2:System.out.println("enter the student name: ");
				       String name=sc.next();
				       ArrayList<Student> st=sdao.getStudent(name);
				       if(st.isEmpty()) {
				    	   System.out.println("No user found: " +name);
				       }else {
				    	   System.out.println("User found: " +name);
				       }
				       for(Student s:st) {
				    	   System.out.println("Student id: "+s.getId());
				    	   System.out.println("Student name: "+s.getName());
				    	   System.out.println("Student branch: "+s.getBranch());
				    	   System.out.println("Student location: "+s.getLoc());
				    	   System.out.println("--------------------------");
				       }
				break;
				case 3:Update.update(a);
				break;
				case 4:Password.reset(a);
				break;
				case 5:System.out.println("Going back to main menu...");
				break;
				case 6:System.out.println("Our Users.......");
				       ArrayList<Student> sL=sdao.getStudent();
				       for(Student s:sL) {
				    	   System.out.println(s);
				       }
				break;
				case 7:System.out.println("enter the id: ");
				       int id=sc.nextInt();
				       boolean del=sdao.deleteStudent(id);
				       if(del) {
				    	   System.out.println("deleted successfully");
				       }
				       else {
				    	   System.out.println("no id found,try again...");
				       }
				break;
				default:System.out.println("Invalid choice! try again....");
				}
			}while(choice!=5);
		}
		else {
			System.out.println("Failed to login !");
		}
	}

}

