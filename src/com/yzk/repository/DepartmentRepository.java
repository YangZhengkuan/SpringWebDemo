package com.yzk.repository;

import java.util.List;

import javax.persistence.QueryHint;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;

import com.yzk.entity.Department;
import java.lang.Integer;

public interface DepartmentRepository extends JpaRepository<Department, Integer> {

	// 使用@QueryHints注解来使该sql使用二级缓存
	@QueryHints({ @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true") })
	@Query("from Department d")
	List<Department> getAll();

}
