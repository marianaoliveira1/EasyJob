package com.easyJob.easyJob.repositorys;

import com.easyJob.easyJob.models.Materias;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MateriasRepository extends JpaRepository<Materias, Long> {
}
