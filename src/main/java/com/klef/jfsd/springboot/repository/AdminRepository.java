package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Seller;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{
	
	@Query("select a from Admin a where a.username=?1 and a.password=?2 ")
	public Admin checkadminlogin(String uname , String pwd); 
	
	@Modifying
	@Transactional	// commit changes
	@Query("update Servicereq r set r.status=?2 where r.id=?1")
	public int updatestatus(int eid,String status);
	
	@Modifying
    @Transactional  //commit changes
    @Query("update Seller s set s.sacceptence=?2 where s.id=?1")
	public int sellerstatus(int cid, boolean acceptance);
	
	@Query("select s from Seller s where s.sacceptence=true")
	public List<Seller> viewallselleraccepted();
}
