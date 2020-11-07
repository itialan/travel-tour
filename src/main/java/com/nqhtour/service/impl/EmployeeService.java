package com.nqhtour.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.nqhtour.converter.EmployeeConverter;
import com.nqhtour.converter.UserConverter;
import com.nqhtour.dto.EmployeeDTO;
import com.nqhtour.dto.UserDTO;
import com.nqhtour.entity.EmployeeEntity;
import com.nqhtour.entity.UserEntity;
import com.nqhtour.repository.EmployeeRepository;
import com.nqhtour.repository.UserRepository;
import com.nqhtour.service.IEmployeeService;

@Service
public class EmployeeService implements IEmployeeService {

	@Autowired
	EmployeeRepository employeeRepository;
	
	@Autowired
	EmployeeConverter employeeConverter;
	
	@Autowired
	UserService userService;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserConverter userConverter;

	@Override
	public List<EmployeeDTO> findAll(Pageable pageable) {
		List<EmployeeDTO> models = new ArrayList<>();
		List<EmployeeEntity> entities = employeeRepository.findAll(pageable).getContent();
		for (EmployeeEntity item : entities) {
			EmployeeDTO emplDTO = employeeConverter.toDTO(item);
			models.add(emplDTO);
		}
		
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) employeeRepository.count();
	}

	@Override
	public EmployeeDTO findById(long id) {
		EmployeeEntity entity = employeeRepository.findOne(id);
		return employeeConverter.toDTO(entity);
	}

	@Override
	public String findRoleByUserId(long userID) {
		return null;
	}

	@Override
	public EmployeeDTO save(EmployeeDTO dto) {
		EmployeeEntity entity = new EmployeeEntity();
		if (dto.getId() != null) {
			EmployeeEntity oldEmpl = employeeRepository.findOne(dto.getId());
			entity = employeeConverter.toEntity(oldEmpl, dto);
		} else {
			UserDTO userDTO = new UserDTO();
			userDTO.setUsername(dto.getEmail());
			userDTO.setPassword(dto.getPassword());
			userDTO.setRole(dto.getRole());
			userDTO.setStatus(1);
			//Long userID = userService.save(userDTO);
			
			UserEntity userEntity = userRepository.save(userConverter.toEntity(userDTO));
			
			//dto.setUserID(userID);
			entity = employeeConverter.toEntity(dto);
			entity.setUser(userEntity);
		}

		return employeeConverter.toDTO(employeeRepository.save(entity));
	}

	@Override
	public void delete(long id) {
		employeeRepository.delete(id);
	}

}
