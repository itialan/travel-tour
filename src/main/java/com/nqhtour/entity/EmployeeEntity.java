package com.nqhtour.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "`employee`")
public class EmployeeEntity extends BaseEntity {
	@Column(name = "name")
	private String name;

	@Column(name = "gender")
	private boolean gender;

	@Column(name = "email")
	private String email;

	@Column(name = "address")
	private String address;

	@Column(name = "birthday", columnDefinition = "DATE")
	private String birthday;

	@Column(name = "phonenumber")
	private String phoneNumber;

	@Column(name = "avatar", columnDefinition = "TEXT")
	private String avatar;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userid")
	private UserEntity user;

//	@OneToMany(mappedBy = "employee")
//	private List<TourEntity> tour = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

//	public List<TourEntity> getTour() {
//		return tour;
//	}
//
//	public void setTour(List<TourEntity> tour) {
//		this.tour = tour;
//	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
}

