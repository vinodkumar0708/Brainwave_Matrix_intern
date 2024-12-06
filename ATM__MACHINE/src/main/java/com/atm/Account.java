package com.atm;

public class Account {
    private double balance = 10000;
    private String accountHolder = "Vinod";

    public double getBalance() {
        return balance;
    }

    public String getAccountHolder() {
        return accountHolder;
    }

    public double withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            return amount;
        } else {
            return -1; // Indicate invalid operation
        }
    }
}
