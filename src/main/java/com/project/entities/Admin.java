package com.project.entities;
//Generated Aug 22, 2020, 3:23:46 PM by Hibernate Tools 5.4.18.Final

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Admin generated by hbm2java
 */
@Entity
@Table(name = "admin")
public class Admin implements java.io.Serializable {

	private static final long serialVersionUID = 3652701442993010762L;
	private Integer id;
	private String name;
	private String username;
	private String password;
	private String mailaddress;
	public Admin() {
	}

	public Admin(String name, String username, String password, String mailaddress) {
		this.name = name;
		this.username = username;
		this.password = password;
		this.mailaddress = mailaddress;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "admin_id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "admin_name", nullable = false, length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "user_name", nullable = false, length = 50)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", nullable = false, length = 50)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name = "mail_address", nullable = false, length = 50)
	public String getMailaddress() {
		return this.mailaddress;
	}

	public void setMailaddress(String mailaddress) {
		this.mailaddress = mailaddress;
	}

}
