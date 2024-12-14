package com.bean.hospital;

import javax.persistence.*;

@Entity
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int appointmentId;

    @ManyToOne
    @JoinColumn(name = "PatientID", referencedColumnName = "Id")
    private Patient patient;

    private String appointmentDate;
    private String doctorName;

    public Appointment() {
        super();
    }

    public Appointment(int appointmentId, Patient patient, String appointmentDate, String doctorName) {
        super();
        this.appointmentId = appointmentId;
        this.patient = patient;
        this.appointmentDate = appointmentDate;
        this.doctorName = doctorName;
    }

    public Appointment(Patient patient, String appointmentDate, String doctorName) {
        super();
        this.patient = patient;
        this.appointmentDate = appointmentDate;
        this.doctorName = doctorName;
    }

    public int getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }
}
