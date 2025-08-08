package in.pentagon.studentapp.index;

import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImpl;
import in.pentagon.studentapp.dto.Student;

public class Signup {
	public static void signup() {
		Scanner sc=new Scanner(System.in);
		StudentDAO sado=new StudentDAOImpl();
		Student s=new Student();
		System.out.println("<----Student Signup---->");
		System.out.println("enter the name:");
		s.setName(sc.next());
		System.out.println("enter the phone:");
		s.setPhone(sc.nextLong());
		System.out.println("enter the mail");
		s.setMail(sc.next());
		System.out.println("enter the branch");
		s.setBranch(sc.next());
		System.out.println("enter the location");
		s.setLoc(sc.next());
		System.out.println("set new password");
		String password=sc.next();
		System.out.println("confirm password");
		String confirmpassword=sc.next();
		if(password.equals(confirmpassword)) {
			s.setPassword(confirmpassword);
			boolean res=sado.insertStudent(s);
			if(res) {
			System.out.println( "Date added successfully!");
		  }
			else {
				System.out.println("failed to create account!");
			}
		}
		else {
			System.out.println("Password mismatch");
		}

	}
}
