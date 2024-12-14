package com.bean.hospital;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Staff {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int staffId;
    private String name;
    private String role;
    private String department;
    private String phoneNumber;

    public Staff() {
        super();
    }

    public Staff(int staffId, String name, String role, String department, String phoneNumber) {
        super();
        this.staffId = staffId;
        this.name = name;
        this.role = role;
        this.department = department;
        this.phoneNumber = phoneNumber;
    }

    public Staff(String name, String role, String department, String phoneNumber) {
        super();
        this.name = name;
        this.role = role;
        this.department = department;
        this.phoneNumber = phoneNumber;
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
