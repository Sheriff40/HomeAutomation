package com.example.homeautomation;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Earthquake {

	@Id
	private int id;
	private String description;
	//private Date presentDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
		
}
