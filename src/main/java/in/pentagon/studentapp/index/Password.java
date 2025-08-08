package in.pentagon.studentapp.index;

import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImpl;
import in.pentagon.studentapp.dto.Student;

public class Password {
	public static void reset(Student s) {
		Scanner sc=new Scanner(System.in);
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("enter the phone number");
		long phone=sc.nextLong();
		System.out.println("enter the mail");
		String mail=sc.next();
		if(s.getPhone()==phone && s.getMail().equals(mail)) {
			System.out.println("enter the new password");
			String pass=sc.next();
			System.out.println("confirm the new password");
			String cpass=sc.next();
			if(pass.equals(cpass)) {
				s.setPassword(cpass);
				boolean res=sdao.updateStudent(s);
				if(res) {
					System.out.println("Password updated successfully");
				}else {
					System.out.println("failed to update the password");
				}
			}
			else {
				System.out.println("password mismatch");
			}
		}else {
			System.out.println("incorrect phone or mail");
		}
		
	}
	public static void forgot() {
		Scanner sc=new Scanner(System.in);
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("enter the phone number");
		long phone=sc.nextLong();
		System.out.println("enter the mail");
		String mail=sc.next();
		Student st=sdao.getStudent(phone,mail);
		if(st!=null) {
			System.out.println("enter the new password");
			String pass=sc.next();
			System.out.println("confirm the new password");
			String cpass=sc.next();
			if(pass.equals(cpass)) {
				st.setPassword(cpass);
				boolean res=sdao.updateStudent(st);
				if(res) {
					System.out.println("Password updated successfully");
				}else {
					System.out.println("failed to update the password");
				}
			}
			else {
				System.out.println("password mismatch");
			}
		}else {
			System.out.println("incorrect phone or mail");
		}
		
	}
	}


