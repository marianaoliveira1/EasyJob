package com.easyJob.easyJob.repositorys;

import com.easyJob.easyJob.models.Alunos;
import com.easyJob.easyJob.models.Professor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfessorRepository extends JpaRepository<Professor,Long> {

    Boolean existsByEmail(String email);

    Page<Professor> findByNome(String professorNome, Pageable pageable);
}
