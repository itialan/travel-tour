package com.nqhtour.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "`tour`")
@EntityListeners(AuditingEntityListener.class)
public class TourEntity extends BaseEntity {
	@Column(name = "name")
	private String name;
	
	@Column(name = "tourID")
	private String tourID;
	
	@Column(name = "location")
	private String location;
	
	@Column(name = "duration")
	private Integer duration;

	@Column(name = "maxgroupsize")
	private Integer maxGroupSize;

	@Column(name = "currentgroupsize")
	private Integer currentGroupSize;

	@Column(name = "price")
	private Long price;

	@Column(name = "description", columnDefinition = "TEXT")
	private String description;

	@Column(name = "summary")
	private String summary;

	@Column(name = "images", columnDefinition = "TEXT")
	private String images;

	@Column(name = "imagecover", columnDefinition = "TEXT")
	private String imageCover;
	
	@Column(name = "startdate")
	private String startDate;

//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "employee_id")
//	private EmployeeEntity employee;

	@Column(name = "createdBy")
	@CreatedBy
	private String createdBy;

	@OneToMany(mappedBy = "clientEntity", fetch = FetchType.LAZY)
	private List<ClientTourEntity> clients = new ArrayList<>();

	/*@ManyToMany(mappedBy = "tours")
	private List<ClientEntity> clients = new ArrayList<>();*/

	public String getName() {
		return name;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTourID() {
		return tourID;
	}

	public void setTourID(String tourID) {
		this.tourID = tourID;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Integer getMaxGroupSize() {
		return maxGroupSize;
	}

	public void setMaxGroupSize(Integer maxGroupSize) {
		this.maxGroupSize = maxGroupSize;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getImageCover() {
		return imageCover;
	}

//	public EmployeeEntity getEmployee() {
//		return employee;
//	}
//
//	public void setEmployee(EmployeeEntity employee) {
//		this.employee = employee;
//	}

	/*public List<ClientEntity> getClients() {
		return clients;
	}*/

	/*public void setClients(List<ClientEntity> clients) {
		this.clients = clients;
	}*/

	public void setImageCover(String imageCover) {
		this.imageCover = imageCover;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public Integer getCurrentGroupSize() {
		return currentGroupSize;
	}

	public void setCurrentGroupSize(Integer currentGroupSize) {
		this.currentGroupSize = currentGroupSize;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public List<ClientTourEntity> getClients() {
		return clients;
	}

	public void setClients(List<ClientTourEntity> clients) {
		this.clients = clients;
	}
}
