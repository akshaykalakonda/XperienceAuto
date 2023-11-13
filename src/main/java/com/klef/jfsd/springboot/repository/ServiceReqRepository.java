package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Servicereq;

@Repository
public interface ServiceReqRepository extends JpaRepository<Servicereq, Integer> {

	@Query("select r from Servicereq r where r.fullname=?1")
	public List<Servicereq> listOfrequest(String cname);
	
}
