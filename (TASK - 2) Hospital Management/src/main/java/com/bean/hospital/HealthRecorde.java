package com.bean.hospital;

import java.sql.Date;
import javax.persistence.*;

@Entity
public class HealthRecorde {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int recordId;

    @ManyToOne
    @JoinColumn(name = "PatientId", referencedColumnName = "Id")
    private Patient patient;

    private String diagnosis;
    private String treatment;
    private Date recordDate;

    public HealthRecorde() {
        super();
    }

    public HealthRecorde(int recordId, Patient patient, String diagnosis, String treatment, Date recordDate) {
        super();
        this.recordId = recordId;
        this.patient = patient;
        this.diagnosis = diagnosis;
        this.treatment = treatment;
        this.recordDate = recordDate;
    }

    public HealthRecorde(Patient patient, String diagnosis, String treatment, Date recordDate) {
        super();
        this.patient = patient;
        this.diagnosis = diagnosis;
        this.treatment = treatment;
        this.recordDate = recordDate;
    }

    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getTreatment() {
        return treatment;
    }

    public void setTreatment(String treatment) {
        this.treatment = treatment;
    }

    public Date getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(Date recordDate) {
        this.recordDate = recordDate;
    }
}
