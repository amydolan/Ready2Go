/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/userManagementApplication
  https://www.youtube.com/watch?v=-3m2_wHWXf4&t=3416s */

package com.xadmin.newstartmanagement.model;

/**
 *
 * @author amydolan
 */
public class Recruit {
    
     protected int id;
	protected String name;
	protected String startdate;
        protected String email;
	protected String role;
        protected String address;
	protected String manager;
	protected String requirements;
        protected String updates;
	
	public Recruit() {
	}
	
	public Recruit(String name, String startdate, String email, String role, String address, String manager, String requirements, String updates) {
		super();
		this.name = name;
		this.startdate = startdate;
                this.email = email;
		this.role = role;
                this.address = address;
                this.manager = manager;
                this.requirements = requirements;
                this.updates = updates;               
	}

	public Recruit(int id, String name, String startdate, String email, String role, String address, String manager, String requirements, String updates) {
		super();
		this.id = id;
		this.name = name;
		this.startdate = startdate;
                this.email = email;
		this.role = role;
                this.address = address;
                this.manager = manager;
                this.requirements = requirements;
                this.updates = updates;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
        public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
        public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
        public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
        public String getRequirements() {
		return requirements;
	}
	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}
        public String getUpdates() {
		return updates;
	}
	public void setUpdates(String updates) {
		this.updates = updates;
	}
    
}
