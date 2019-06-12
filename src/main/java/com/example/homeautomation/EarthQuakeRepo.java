package com.example.homeautomation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface EarthQuakeRepo extends JpaRepository<Earthquake, Integer>{

	@Query(value = "SELECT max(e.id) FROM Earthquake e ")
    public int getMaxId();
	
	@Query(value = "Select * FROM Earthquake WHERE id = ?1 ", nativeQuery = true)
	public Earthquake getById(int id);
}
