package com.easyJob.easyJob.repositorys;

import com.easyJob.easyJob.models.Alunos;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AlunoRepository extends JpaRepository<Alunos,Long> {
    Boolean existsByEmail(String email);

    Page<Alunos> findByNome(String alunoNome, Pageable pageable);
}
