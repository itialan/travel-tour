package com.nqhtour.converter;

import org.springframework.stereotype.Component;

import com.nqhtour.dto.TourDTO;
import com.nqhtour.entity.TourEntity;

// Để có thể Dependency Injection, add anotation Component
@Component
public class TourConverter {

	public TourDTO toDTO(TourEntity entity) {
		TourDTO result = new TourDTO();
		result.setId(entity.getId());
		result.setName(entity.getName());
		result.setTourID(entity.getTourID());
		result.setDescription(entity.getDescription());
		result.setSummary(entity.getSummary());
		result.setDuration(entity.getDuration());
		result.setLocation(entity.getLocation());
		result.setMaxGroupSize(entity.getMaxGroupSize());
		result.setPrice(entity.getPrice());
		result.setStartDate(entity.getStartDate());
		result.setImageCover(entity.getImageCover());
		result.setCurrentGroupSize(entity.getCurrentGroupSize());
		
		return result;
	}

	public TourEntity toEntity(TourDTO dto) {
		TourEntity result = new TourEntity();
		result.setName(dto.getName());
		result.setTourID(dto.getTourID());
		result.setDescription(dto.getDescription());
		result.setSummary(dto.getSummary());
		result.setDuration(dto.getDuration());
		result.setLocation(dto.getLocation());
		result.setMaxGroupSize(dto.getMaxGroupSize());
		result.setPrice(dto.getPrice());
		result.setStartDate(dto.getStartDate());
		result.setImageCover(dto.getImageCover());
		result.setCurrentGroupSize(dto.getCurrentGroupSize());
		
		return result;
	}

	// For update
	public TourEntity toEntity(TourEntity oldTour, TourDTO dto) {
		oldTour.setName(dto.getName());
		oldTour.setTourID(dto.getTourID());
		oldTour.setDescription(dto.getDescription());
		oldTour.setSummary(dto.getSummary());
		oldTour.setDuration(dto.getDuration());
		oldTour.setLocation(dto.getLocation());
		oldTour.setMaxGroupSize(dto.getMaxGroupSize());
		oldTour.setPrice(dto.getPrice());
		oldTour.setStartDate(dto.getStartDate());
		oldTour.setImageCover(dto.getImageCover());
		oldTour.setCurrentGroupSize(dto.getCurrentGroupSize());
		
		return oldTour;
	}
}
