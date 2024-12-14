package com.bean.hospital;

import java.sql.Date;
import javax.persistence.*;

@Entity
public class Bill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int billId;

    @ManyToOne
    @JoinColumn(name = "PatientId", referencedColumnName = "Id")
    private Patient patient;

    private double amount;
    private Date billDate;

    public Bill() {
        super();
    }

    public Bill(int billId, Patient patient, double amount, Date billDate) {
        super();
        this.billId = billId;
        this.patient = patient;
        this.amount = amount;
        this.billDate = billDate;
    }

    public Bill(Patient patient, double amount, Date billDate) {
        super();
        this.patient = patient;
        this.amount = amount;
        this.billDate = billDate;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getBillDate() {
        return billDate;
    }

    public void setBillDate(Date billDate) {
        this.billDate = billDate;
    }
}
