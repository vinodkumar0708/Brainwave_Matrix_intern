package com.atm;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/")
public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/pin":
                checkValidPin(request, response);
                break;
            case "/withdraw":
                withDrawAmount(request, response);
                break;
            case "/check":
                checkBalanceAmount(request, response);
                break;
            case "/balance" :balanceInquiry(request, response);
            break;
        }
    }

    private void balanceInquiry(HttpServletRequest request, HttpServletResponse response) {
		Account a = new Account();
		double currentAmount = a.getBalance(); 
		request.setAttribute("balanceAmount", currentAmount);
        RequestDispatcher rd = request.getRequestDispatcher("balance.jsp");
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

	private void checkBalanceAmount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        
        if (account == null) {
            account = new Account();
            session.setAttribute("account", account);
        }
        
        double balance = account.getBalance();
        request.setAttribute("balanceAmount", balance);
        RequestDispatcher rd = request.getRequestDispatcher("balance.jsp");
        rd.forward(request, response);
    }

    private void withDrawAmount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        
        if (account == null) {
            account = new Account();
            session.setAttribute("account", account);
        }
        
        int amountToWithdraw = Integer.parseInt(request.getParameter("txtAmount"));
        double withdrawnAmount = account.withdraw(amountToWithdraw);

        if (withdrawnAmount > 0) {
            request.setAttribute("message", "<h4 style='color:green'>Withdrawal successful! Remaining balance: " + account.getBalance() + "</h4>");
            RequestDispatcher rd = request.getRequestDispatcher("succes.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("message", "<h4 style='color:red'>Invalid withdrawal amount or insufficient funds!</h4>");
            RequestDispatcher rd = request.getRequestDispatcher("amount.jsp");
            rd.forward(request, response);
        }
    }

    private void checkValidPin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pin = request.getParameter("txtPassword");
        String correctPin = "1234";
        
        if (correctPin.equals(pin)) {
            HttpSession session = request.getSession();
            Account account = new Account();
            session.setAttribute("account", account);
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("message", "<h4 style='color:red'>Invalid pin</h4>");
            RequestDispatcher rd = request.getRequestDispatcher("withdraw.jsp");
            rd.forward(request, response);
        }
    }
}
