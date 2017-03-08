package com.yzk.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yzk.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	Employee getByLastName(String lastName);
}
