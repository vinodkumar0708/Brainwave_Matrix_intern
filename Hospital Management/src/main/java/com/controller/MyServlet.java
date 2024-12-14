package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.hospital.Appointment;
import com.bean.hospital.Bill;
import com.bean.hospital.HealthRecorde;
import com.bean.hospital.Inventory;
import com.bean.hospital.Patient;
import com.bean.hospital.Staff;

@WebServlet("/")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String path = request.getServletPath();
		switch(path) {
		case "/addP": addPatient(request, response);
		break;
		case "/addS": addStaff(request, response);
		break;
		case "/addI": addInventory(request, response);
		break;
		case "/addB": addBill(request, response);
		break;
		case "/addA": addAppointment(request, response);
		break;
		case "/addHR": addHealthRecorde(request, response);
		break;
		case "/showS": showStaff(request, response);
		break;
		case "/showI": showInvntory(request, response);
		break;
		case "/showB": showBill(request,response);
		break;
		case "/delete": deleteData(request, response);
		break;
		case "/deletei": deleteIData(request, response);
		break;
		case "/deletes": deleteSData(request, response);
		break;
		case "/studentDetails": 
			String action = request.getParameter("action");
			switch(action) {
			case "Add": response.sendRedirect("PatientForm.jsp");
			break;
			case "Appointment": response.sendRedirect("AppointmentForm.jsp");
			break;
			case "Bill": response.sendRedirect("BillForm.jsp");
			break;
			case "Inventory": response.sendRedirect("InventoryForm.jsp");
			break;
			case "Staff": response.sendRedirect("StaffForm.jsp");
			break;
			case "Record": response.sendRedirect("HealthRecordForm.jsp");
			break;
			case "AllRecord": showAllData(request, response);
			break;
			}
		break;
		}
	}
	
	private void deleteSData(HttpServletRequest request, HttpServletResponse response) {
		int id =Integer.parseInt(request.getParameter("Id"));
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		Staff st = s.get(Staff.class, id);
		s.delete(st);
		t.commit();
		
		s.close();
		sf.close();
		showAllData(request, response);
		
	}
	
	
	private void deleteIData(HttpServletRequest request, HttpServletResponse response) {
		int id =Integer.parseInt(request.getParameter("Id"));
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		Inventory i = s.get(Inventory.class, id);
		s.delete(i);
		t.commit();
		
		s.close();
		sf.close();
		showAllData(request, response);
		
	}
	
	
	private void deleteData(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("Id"));
		
		try { SessionFactory sf = new Configuration().configure().buildSessionFactory(); 
			Session s = sf.openSession(); 
			Transaction t = s.beginTransaction(); 
			// Fetch the patient entity 
			Patient p = s.get(Patient.class, id); 
			if (p != null) { 
				// Fetch and delete related entities 
				s.createQuery("DELETE FROM HealthRecorde WHERE patient.id = :patientId") 
				.setParameter("patientId", id) 
				.executeUpdate(); 
				s.createQuery("DELETE FROM Bill WHERE patient.id = :patientId") 
				.setParameter("patientId", id) 
				.executeUpdate(); 
				s.createQuery("DELETE FROM Appointment WHERE patient.id = :patientId") 
				.setParameter("patientId", id) 
				.executeUpdate(); 
				// Delete the patient entity 
				s.delete(p); t.commit(); 
				showAllData(request, response);
				} 
			else { 
				request.setAttribute("message", "<h4 style='color:red'>Patient not found!.</h4>");
				RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp"); 
				rd.forward(request, response); 
				} 
			s.close(); 
				sf.close(); 
				} 
		catch (Exception e) { 
			e.printStackTrace(); 
			try { response.sendRedirect("HomePage.jsp"); 
			} catch (IOException ioException) 
			{ ioException.printStackTrace(); 
			
			}
		}
		
	}
	
	private void showAllData(HttpServletRequest request, HttpServletResponse response) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		
		Criteria c = s.createCriteria(Patient.class);
		List<Patient> pList = c.list();
		request.setAttribute("PList", pList);

		Criteria a = s.createCriteria(Appointment.class);
		List<Appointment> aList = a.list();
		request.setAttribute("AList", aList);
		

		Criteria b = s.createCriteria(Bill.class);
		List<Bill> bList = b.list();
		request.setAttribute("BList", bList);

		Criteria i = s.createCriteria(Inventory.class);
		List<Inventory> iList = i.list();
		request.setAttribute("IList", iList);

		Criteria st = s.createCriteria(Staff.class);
		List<Staff> sList = st.list();
		request.setAttribute("SList", sList);

		Criteria h = s.createCriteria(HealthRecorde.class);
		List<HealthRecorde> hList = h.list();
		request.setAttribute("HList", hList);
		
		s.close();
		sf.close();
		
		RequestDispatcher rd = request.getRequestDispatcher("ShowAllData.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	private void showBill(HttpServletRequest request, HttpServletResponse response) { 
		String patientIdParam = request.getParameter("id"); 
		if (patientIdParam != null) { 
			try { 
				int patientId = Integer.parseInt(patientIdParam); 
				SessionFactory sf = new Configuration().configure().buildSessionFactory(); 
				Session s = sf.openSession(); 
				Transaction t = s.beginTransaction(); 

				Patient p1 = s.get(Patient.class,patientId); 
				HealthRecorde h1 = s.get(HealthRecorde.class, patientId); 
				Bill b1 = s.get(Bill.class, patientId); 
				if(p1!=null) { 
					request.setAttribute("PList", p1); 
					request.setAttribute("HList", h1); 
					request.setAttribute("BList", b1); 
					RequestDispatcher rd = request.getRequestDispatcher("ReciptBillForm.jsp"); 
					rd.forward(request, response);
				}
				else { 
					request.setAttribute("message", "<h4 style='color:red'>Patient not found!.</h4>"); 
					RequestDispatcher rd = request.getRequestDispatcher("BillForm.jsp"); 
					try {
						rd.forward(request, response);
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			
		}
	}
	
							
	private void showInvntory(HttpServletRequest request, HttpServletResponse response) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		
		Criteria c =s.createCriteria(Inventory.class);
		List<Inventory> inventorylist = c.list();
		
		request.setAttribute("IList", inventorylist);
		RequestDispatcher rd = request.getRequestDispatcher("ShowInventory.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	
	private void showStaff(HttpServletRequest request, HttpServletResponse response) {
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		
		Criteria c = s.createCriteria(Staff.class);
		List<Staff> stafflist = c.list();
		s.close();
		sf.close();
		
		request.setAttribute("List", stafflist);
		RequestDispatcher rd = request.getRequestDispatcher("ShowStaff.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	private void addHealthRecorde(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("txtP-id"));
		String diagnosis = request.getParameter("txt-diognosis");
		String treatment = request.getParameter("txt-treatment");
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		Patient patient = s.get(Patient.class, id);
		
		if(patient!=null) {
			HealthRecorde healthrecord = new HealthRecorde(patient, diagnosis, treatment, new Date(System.currentTimeMillis()));
			s.save(healthrecord);
			t.commit();
			
			try {
				response.sendRedirect("HealthRecordForm.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else { 
			request.setAttribute("message", "<h4 style='color:red'>patient not found not possible do Treatment!.</h4>");
			RequestDispatcher rd = request.getRequestDispatcher("HealthRecordForm.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		
	}
	
	
	private void addAppointment(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("txtP-id"));
		String date = (request.getParameter("txt-Date"));
		String dName = request.getParameter("txtD-name");
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		// Retrieve the Patient object from the database 
		Patient patient = s.get(Patient.class, id);
		
		if (patient != null) { 
			Appointment appointment = new Appointment(patient, date, dName);
			s.save(appointment); 
			t.commit(); 
			
			try {
				response.sendRedirect("PatientForm.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		else { 
			request.setAttribute("message", "<h4 style='color:red'>patient not found can't take an Appointment!.</h4>");
			RequestDispatcher rd = request.getRequestDispatcher("AppointmentForm.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		
		
	}
	
	
	private void addBill(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("txtP-id")); 
		double amount = Double.parseDouble(request.getParameter("txt-Amount")); 
		SessionFactory sf = new Configuration().configure().buildSessionFactory(); 
		Session s = sf.openSession(); 
		Transaction t = s.beginTransaction(); 
		
		// Retrieve the Patient object from the database 
		Patient patient = s.get(Patient.class, id);
		
		if (patient != null) { 
			Bill bill = new Bill(patient, amount, new Date(System.currentTimeMillis())); 
			s.save(bill); 
			t.commit(); 
			try { 
				response.sendRedirect("BillForm.jsp");
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		} 
		else { 
			request.setAttribute("message", "<h4 style='color:red'>patient not found!.</h4>");
			RequestDispatcher rd = request.getRequestDispatcher("BillForm.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		s.close(); 
		sf.close(); 
		
	}
	
	
	private void addInventory(HttpServletRequest request, HttpServletResponse response) {
		
		String itemName = request.getParameter("txtI-name");
		int quantity = Integer.parseInt(request.getParameter("txtI-quantity"));
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		Inventory inventory = new Inventory(itemName, quantity);
		
		s.save(inventory);
		t.commit();
		
		try {
			response.sendRedirect("HomePage.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	private void addStaff(HttpServletRequest request, HttpServletResponse response) {
		
		String name = request.getParameter("txtS-name");
		String role = request.getParameter("txtS-role");
		String department = request.getParameter("txtS-department");
		String phoneNumber = request.getParameter("txtS-phoneNumber");
		
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		Staff staff = new Staff(name, role, department, phoneNumber);
		
		s.save(staff);
		t.commit();
		
		try {
			response.sendRedirect("HomePage.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	private void addPatient(HttpServletRequest request, HttpServletResponse response) {
		
		String name = request.getParameter("txtP-name");
		int age = Integer.parseInt(request.getParameter("txtP-age"));
		String gender = request.getParameter("txtP-gender");
		String address = request.getParameter("txtP-address");
		String phoneNumber = request.getParameter("txtP-phoneNumber");
			
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		
		Patient patient = new Patient(name, age, gender, address, phoneNumber);
		s.save(patient);
		t.commit();
		
		try {
			response.sendRedirect("PatientForm.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		        
	}
		
	

}
