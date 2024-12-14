package com.bean.hospital;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Inventory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int itemId;
    private String itemName;
    private int quantity;

    // Default constructor
    public Inventory() {
        super();
    }

    // Constructor with all fields
    public Inventory(int itemId, String itemName, int quantity) {
        super();
        this.itemId = itemId;  // Correctly assign the class field
        this.itemName = itemName;  // Correctly assign the class field
        this.quantity = quantity;  // Correctly assign the class field
    }

    // Constructor without itemId (for creation purposes)
    public Inventory(String itemName, int quantity) {
        super();
        this.itemName = itemName;  // Correctly assign the class field
        this.quantity = quantity;  // Correctly assign the class field
    }

    // Getter and Setter for itemId
    public int getItemId() {
        return itemId;  // Use the correct field name 'itemId'
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;  // Use the correct field name 'itemId'
    }

    // Getter and Setter for itemName
    public String getItemName() {
        return itemName;  // Use the correct field name 'itemName'
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;  // Use the correct field name 'itemName'
    }

    // Getter and Setter for quantity
    public int getQuantity() {
        return quantity;  // Use the correct field name 'quantity'
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;  // Use the correct field name 'quantity'
    }
}
